{
	"contents": {
		"113f4c73-4e16-4f68-9135-c88ba8e76394": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "livrocloudworkflow",
			"subject": "LivroCloudWorkflow",
			"name": "LivroCloudWorkflow",
			"documentation": "Neo Workflow para o livro de Workflow Architect",
			"lastIds": "64e5914d-1440-4410-88e6-5b2d35e26460",
			"events": {
				"ed83de3c-f15a-4e37-8c81-8e5e9934c7ba": {
					"name": "Inicio"
				},
				"1a6175c3-054f-42fc-b8d8-aa147b38d413": {
					"name": "Fim"
				}
			},
			"activities": {
				"b0c16800-9fd9-434d-a35f-fdf8d23e6899": {
					"name": "Buscando a Joke via API"
				},
				"291fe7ef-8ac3-4a6d-8ba2-7d549c1a1c4e": {
					"name": "Gostou?"
				},
				"599eddf0-8b08-4351-bb99-92d4d1449686": {
					"name": "Aprovado?"
				},
				"e9410e1d-b228-4313-9eb3-3e457acc3d71": {
					"name": "Script Aprovado"
				},
				"2a3c03f0-8084-47bf-a074-ef59629dc515": {
					"name": "Script Reprovado"
				},
				"6035117c-c3db-479d-b487-f4ad68ea6b5d": {
					"name": "Gostei, avisando a Galera"
				},
				"8d370ba3-d44b-4c43-ae9c-71f01a280ba4": {
					"name": "Não gostei, avisando a Galera"
				},
				"50be31a4-dd78-40f3-af78-bb058804dd1b": {
					"name": "Enviando Email"
				},
				"66de0c68-1a81-45ed-97df-781a10f2b9e8": {
					"name": "Enviando Email"
				},
				"ae48c8c0-73d2-4309-b5e3-a358bc91112f": {
					"name": "Pronto"
				},
				"ee6a1487-bb12-44c0-9059-bc7864f71c1a": {
					"name": "Pronto"
				}
			},
			"sequenceFlows": {
				"d0e36f73-72f5-49f8-a606-8d67d75764aa": {
					"name": "SequenceFlow1"
				},
				"33902208-7e53-4a6d-b602-06511e8d9f0e": {
					"name": "SequenceFlow2"
				},
				"987e9df6-20db-4dfc-984b-41cb667e99c8": {
					"name": "SequenceFlow3"
				},
				"ec781139-4cf1-4b98-95f2-21a57bf6c9c1": {
					"name": "Piada sem Graça"
				},
				"73388f17-26b2-4edc-b35b-e96ac1dd813d": {
					"name": "Gostei da Piada"
				},
				"789d4b07-1bf9-4af3-a829-dc9615d8cea7": {
					"name": "SequenceFlow10"
				},
				"13735813-2f18-4a72-ba7a-428f9e5f01ac": {
					"name": "SequenceFlow11"
				},
				"6bcb1bff-f89b-49b6-854b-796f1b10c80f": {
					"name": "SequenceFlow12"
				},
				"1919f5ab-b15c-4225-84a1-66a28e0ea1ab": {
					"name": "SequenceFlow13"
				},
				"a4624792-3efe-4721-90a5-fda2068012bf": {
					"name": "SequenceFlow14"
				},
				"652ded39-598f-41e0-a9a6-5792c3266864": {
					"name": "SequenceFlow15"
				},
				"9d530955-8d4d-4028-95f1-e855adc76f60": {
					"name": "SequenceFlow16"
				},
				"b94d78d0-3eb7-4d6b-9c1d-55a347b4c7a8": {
					"name": "SequenceFlow17"
				},
				"d1d0d856-28ae-4d6e-b901-9a5a6d396e83": {
					"name": "SequenceFlow18"
				},
				"6e1460fc-5548-4d24-99a6-c0903c639871": {
					"name": "SequenceFlow19"
				}
			},
			"diagrams": {
				"bb2f75f4-b84b-4906-b52c-840101d02e34": {}
			}
		},
		"ed83de3c-f15a-4e37-8c81-8e5e9934c7ba": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Inicio",
			"documentation": "Vamos lá!"
		},
		"1a6175c3-054f-42fc-b8d8-aa147b38d413": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Fim",
			"documentation": "Chegou ao fim!"
		},
		"b0c16800-9fd9-434d-a35f-fdf8d23e6899": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "ChuckAPI",
			"path": "/jokes/random",
			"httpMethod": "GET",
			"responseVariable": "${context.Joke}",
			"id": "servicetask1",
			"name": "Buscando a Joke via API"
		},
		"291fe7ef-8ac3-4a6d-8ba2-7d549c1a1c4e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Piada aprovada ou não?",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.Aprovador}",
			"formReference": "/forms/LivroCloudWorkflow/Form1.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "form1"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Gostou?"
		},
		"599eddf0-8b08-4351-bb99-92d4d1449686": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Aprovado?",
			"default": "73388f17-26b2-4edc-b35b-e96ac1dd813d"
		},
		"e9410e1d-b228-4313-9eb3-3e457acc3d71": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/LivroCloudWorkflow/scriptaprovado.js",
			"id": "scripttask1",
			"name": "Script Aprovado"
		},
		"2a3c03f0-8084-47bf-a074-ef59629dc515": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/LivroCloudWorkflow/scriptreprovado.js",
			"id": "scripttask2",
			"name": "Script Reprovado"
		},
		"6035117c-c3db-479d-b487-f4ad68ea6b5d": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "Gostei, avisando a Galera"
		},
		"8d370ba3-d44b-4c43-ae9c-71f01a280ba4": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway2",
			"name": "Não gostei, avisando a Galera"
		},
		"50be31a4-dd78-40f3-af78-bb058804dd1b": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Enviando Email",
			"mailDefinitionRef": "444ba7e3-0b94-43dd-a880-856052795ebb"
		},
		"66de0c68-1a81-45ed-97df-781a10f2b9e8": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "Enviando Email",
			"mailDefinitionRef": "3e111de3-f982-4274-8358-935c707d1c8b"
		},
		"ae48c8c0-73d2-4309-b5e3-a358bc91112f": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway3",
			"name": "Pronto"
		},
		"ee6a1487-bb12-44c0-9059-bc7864f71c1a": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway4",
			"name": "Pronto"
		},
		"d0e36f73-72f5-49f8-a606-8d67d75764aa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "ed83de3c-f15a-4e37-8c81-8e5e9934c7ba",
			"targetRef": "b0c16800-9fd9-434d-a35f-fdf8d23e6899"
		},
		"33902208-7e53-4a6d-b602-06511e8d9f0e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "b0c16800-9fd9-434d-a35f-fdf8d23e6899",
			"targetRef": "291fe7ef-8ac3-4a6d-8ba2-7d549c1a1c4e"
		},
		"987e9df6-20db-4dfc-984b-41cb667e99c8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "291fe7ef-8ac3-4a6d-8ba2-7d549c1a1c4e",
			"targetRef": "599eddf0-8b08-4351-bb99-92d4d1449686"
		},
		"ec781139-4cf1-4b98-95f2-21a57bf6c9c1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"n_o_dei_risada\"}",
			"id": "sequenceflow6",
			"name": "Piada sem Graça",
			"sourceRef": "599eddf0-8b08-4351-bb99-92d4d1449686",
			"targetRef": "8d370ba3-d44b-4c43-ae9c-71f01a280ba4"
		},
		"73388f17-26b2-4edc-b35b-e96ac1dd813d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "Gostei da Piada",
			"sourceRef": "599eddf0-8b08-4351-bb99-92d4d1449686",
			"targetRef": "6035117c-c3db-479d-b487-f4ad68ea6b5d"
		},
		"789d4b07-1bf9-4af3-a829-dc9615d8cea7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "6035117c-c3db-479d-b487-f4ad68ea6b5d",
			"targetRef": "50be31a4-dd78-40f3-af78-bb058804dd1b"
		},
		"13735813-2f18-4a72-ba7a-428f9e5f01ac": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "6035117c-c3db-479d-b487-f4ad68ea6b5d",
			"targetRef": "e9410e1d-b228-4313-9eb3-3e457acc3d71"
		},
		"6bcb1bff-f89b-49b6-854b-796f1b10c80f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "8d370ba3-d44b-4c43-ae9c-71f01a280ba4",
			"targetRef": "2a3c03f0-8084-47bf-a074-ef59629dc515"
		},
		"1919f5ab-b15c-4225-84a1-66a28e0ea1ab": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "8d370ba3-d44b-4c43-ae9c-71f01a280ba4",
			"targetRef": "66de0c68-1a81-45ed-97df-781a10f2b9e8"
		},
		"a4624792-3efe-4721-90a5-fda2068012bf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "50be31a4-dd78-40f3-af78-bb058804dd1b",
			"targetRef": "ae48c8c0-73d2-4309-b5e3-a358bc91112f"
		},
		"652ded39-598f-41e0-a9a6-5792c3266864": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "e9410e1d-b228-4313-9eb3-3e457acc3d71",
			"targetRef": "ae48c8c0-73d2-4309-b5e3-a358bc91112f"
		},
		"9d530955-8d4d-4028-95f1-e855adc76f60": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "ae48c8c0-73d2-4309-b5e3-a358bc91112f",
			"targetRef": "1a6175c3-054f-42fc-b8d8-aa147b38d413"
		},
		"b94d78d0-3eb7-4d6b-9c1d-55a347b4c7a8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "2a3c03f0-8084-47bf-a074-ef59629dc515",
			"targetRef": "ee6a1487-bb12-44c0-9059-bc7864f71c1a"
		},
		"bb2f75f4-b84b-4906-b52c-840101d02e34": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"38c3ffcb-38f2-478c-8786-7e5e7dc3433a": {},
				"f2712e55-b5c3-4d4f-97c7-b9d93132cbda": {},
				"b51acae1-9952-4fca-a3f9-63845766ec7a": {},
				"edc6b5a4-31b5-48a2-9c29-d2ca48613d4f": {},
				"0d57771e-609f-4e1b-a8d6-c4b85fe952ba": {},
				"f5061f70-75d8-4831-a340-caf6d1ff7c29": {},
				"b8dd2a75-0192-4e63-a1da-6c91d39b0989": {},
				"532e2b8b-8a39-4719-89c9-78a4bfce2bc7": {},
				"72fe4f97-af2f-43ea-93c5-c5baa258d9dc": {},
				"98c30154-b5f4-409f-a9bf-3fdb4958f09b": {},
				"e199137b-cb64-4134-a36a-0a2a2b7bb58a": {},
				"99c0cbd3-cd4f-47ce-9cc4-49f33b4b5668": {},
				"d3a1de57-5566-48bc-bc5b-21c70c4fd794": {},
				"dd33f90f-255b-4c59-a32f-4c34b5b85683": {},
				"ab354a1b-c3f2-4ea4-858f-f23f2949f78b": {},
				"d7663936-7e3f-49c0-9523-cb9660d98256": {},
				"417c4d5e-eccd-4662-a27f-8b5e9ef55ea1": {},
				"eecb1f8c-8de2-455a-8280-c6ffe797ba67": {},
				"7869bb90-5f34-47dd-9b71-3f1b1ef14e0e": {},
				"6230f310-4429-46f9-a733-b1156b34c419": {},
				"e70a6744-23da-4401-97b0-20cec65f5486": {},
				"a423263c-dbec-44d0-bb44-e77e51ce2380": {},
				"2046ccd5-b42d-4252-a3ad-aebb16894153": {},
				"110ba0c8-ce6b-4cc5-8a5a-293c15f614cf": {},
				"91e83887-3aeb-442e-949b-c600a2a459c9": {},
				"880c7d04-cc8c-4d64-aeb6-3895c4aa5c65": {},
				"334d676e-4ef1-44da-a96e-e77eb7a117d2": {},
				"e0c6fc53-8e3c-46ea-9e0e-48aa7352e283": {}
			}
		},
		"38c3ffcb-38f2-478c-8786-7e5e7dc3433a": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 13.5,
			"y": -230,
			"width": 32,
			"height": 32,
			"object": "ed83de3c-f15a-4e37-8c81-8e5e9934c7ba"
		},
		"f2712e55-b5c3-4d4f-97c7-b9d93132cbda": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 12,
			"y": 465,
			"width": 35,
			"height": 35,
			"object": "1a6175c3-054f-42fc-b8d8-aa147b38d413"
		},
		"b51acae1-9952-4fca-a3f9-63845766ec7a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "29.75,-214 29.75,-93",
			"sourceSymbol": "38c3ffcb-38f2-478c-8786-7e5e7dc3433a",
			"targetSymbol": "edc6b5a4-31b5-48a2-9c29-d2ca48613d4f",
			"object": "d0e36f73-72f5-49f8-a606-8d67d75764aa"
		},
		"edc6b5a4-31b5-48a2-9c29-d2ca48613d4f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -20,
			"y": -123,
			"width": 100,
			"height": 60,
			"object": "b0c16800-9fd9-434d-a35f-fdf8d23e6899"
		},
		"0d57771e-609f-4e1b-a8d6-c4b85fe952ba": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "30,-93 30,0",
			"sourceSymbol": "edc6b5a4-31b5-48a2-9c29-d2ca48613d4f",
			"targetSymbol": "f5061f70-75d8-4831-a340-caf6d1ff7c29",
			"object": "33902208-7e53-4a6d-b602-06511e8d9f0e"
		},
		"f5061f70-75d8-4831-a340-caf6d1ff7c29": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -20,
			"y": -30,
			"width": 100,
			"height": 60,
			"object": "291fe7ef-8ac3-4a6d-8ba2-7d549c1a1c4e"
		},
		"b8dd2a75-0192-4e63-a1da-6c91d39b0989": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "30,0 30,72",
			"sourceSymbol": "f5061f70-75d8-4831-a340-caf6d1ff7c29",
			"targetSymbol": "532e2b8b-8a39-4719-89c9-78a4bfce2bc7",
			"object": "987e9df6-20db-4dfc-984b-41cb667e99c8"
		},
		"532e2b8b-8a39-4719-89c9-78a4bfce2bc7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 9,
			"y": 51,
			"object": "599eddf0-8b08-4351-bb99-92d4d1449686"
		},
		"72fe4f97-af2f-43ea-93c5-c5baa258d9dc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -146,
			"y": 323,
			"width": 100,
			"height": 60,
			"object": "e9410e1d-b228-4313-9eb3-3e457acc3d71"
		},
		"98c30154-b5f4-409f-a9bf-3fdb4958f09b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 134,
			"y": 323,
			"width": 100,
			"height": 60,
			"object": "2a3c03f0-8084-47bf-a074-ef59629dc515"
		},
		"e199137b-cb64-4134-a36a-0a2a2b7bb58a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "30,69 284,69 284,238",
			"sourceSymbol": "532e2b8b-8a39-4719-89c9-78a4bfce2bc7",
			"targetSymbol": "d3a1de57-5566-48bc-bc5b-21c70c4fd794",
			"object": "ec781139-4cf1-4b98-95f2-21a57bf6c9c1"
		},
		"99c0cbd3-cd4f-47ce-9cc4-49f33b4b5668": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": -237,
			"y": 240,
			"object": "6035117c-c3db-479d-b487-f4ad68ea6b5d"
		},
		"d3a1de57-5566-48bc-bc5b-21c70c4fd794": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 263,
			"y": 225,
			"object": "8d370ba3-d44b-4c43-ae9c-71f01a280ba4"
		},
		"dd33f90f-255b-4c59-a32f-4c34b5b85683": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": -392,
			"y": 323,
			"width": 100,
			"height": 60,
			"object": "50be31a4-dd78-40f3-af78-bb058804dd1b"
		},
		"ab354a1b-c3f2-4ea4-858f-f23f2949f78b": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 364,
			"y": 323,
			"width": 100,
			"height": 60,
			"object": "66de0c68-1a81-45ed-97df-781a10f2b9e8"
		},
		"d7663936-7e3f-49c0-9523-cb9660d98256": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "30,72 -217,72 -217,261",
			"sourceSymbol": "532e2b8b-8a39-4719-89c9-78a4bfce2bc7",
			"targetSymbol": "99c0cbd3-cd4f-47ce-9cc4-49f33b4b5668",
			"object": "73388f17-26b2-4edc-b35b-e96ac1dd813d"
		},
		"417c4d5e-eccd-4662-a27f-8b5e9ef55ea1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-216,261 -335,261 -335,325",
			"sourceSymbol": "99c0cbd3-cd4f-47ce-9cc4-49f33b4b5668",
			"targetSymbol": "dd33f90f-255b-4c59-a32f-4c34b5b85683",
			"object": "789d4b07-1bf9-4af3-a829-dc9615d8cea7"
		},
		"eecb1f8c-8de2-455a-8280-c6ffe797ba67": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-216,261 -95,261 -95,337",
			"sourceSymbol": "99c0cbd3-cd4f-47ce-9cc4-49f33b4b5668",
			"targetSymbol": "72fe4f97-af2f-43ea-93c5-c5baa258d9dc",
			"object": "13735813-2f18-4a72-ba7a-428f9e5f01ac"
		},
		"7869bb90-5f34-47dd-9b71-3f1b1ef14e0e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "284,246 184,246 184,323.5",
			"sourceSymbol": "d3a1de57-5566-48bc-bc5b-21c70c4fd794",
			"targetSymbol": "98c30154-b5f4-409f-a9bf-3fdb4958f09b",
			"object": "6bcb1bff-f89b-49b6-854b-796f1b10c80f"
		},
		"6230f310-4429-46f9-a733-b1156b34c419": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "284,246 411,246 411,330",
			"sourceSymbol": "d3a1de57-5566-48bc-bc5b-21c70c4fd794",
			"targetSymbol": "ab354a1b-c3f2-4ea4-858f-f23f2949f78b",
			"object": "1919f5ab-b15c-4225-84a1-66a28e0ea1ab"
		},
		"e70a6744-23da-4401-97b0-20cec65f5486": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": -241,
			"y": 379,
			"object": "ae48c8c0-73d2-4309-b5e3-a358bc91112f"
		},
		"a423263c-dbec-44d0-bb44-e77e51ce2380": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-342,353 -342,412.5 -221,412.5",
			"sourceSymbol": "dd33f90f-255b-4c59-a32f-4c34b5b85683",
			"targetSymbol": "e70a6744-23da-4401-97b0-20cec65f5486",
			"object": "a4624792-3efe-4721-90a5-fda2068012bf"
		},
		"2046ccd5-b42d-4252-a3ad-aebb16894153": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-96,353 -96,408.5 -203,408.5",
			"sourceSymbol": "72fe4f97-af2f-43ea-93c5-c5baa258d9dc",
			"targetSymbol": "e70a6744-23da-4401-97b0-20cec65f5486",
			"object": "652ded39-598f-41e0-a9a6-5792c3266864"
		},
		"110ba0c8-ce6b-4cc5-8a5a-293c15f614cf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-219,400 -219,484 21,484",
			"sourceSymbol": "e70a6744-23da-4401-97b0-20cec65f5486",
			"targetSymbol": "f2712e55-b5c3-4d4f-97c7-b9d93132cbda",
			"object": "9d530955-8d4d-4028-95f1-e855adc76f60"
		},
		"91e83887-3aeb-442e-949b-c600a2a459c9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 274,
			"y": 400,
			"object": "ee6a1487-bb12-44c0-9059-bc7864f71c1a"
		},
		"880c7d04-cc8c-4d64-aeb6-3895c4aa5c65": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "183,353 183,421 287,421",
			"sourceSymbol": "98c30154-b5f4-409f-a9bf-3fdb4958f09b",
			"targetSymbol": "91e83887-3aeb-442e-949b-c600a2a459c9",
			"object": "b94d78d0-3eb7-4d6b-9c1d-55a347b4c7a8"
		},
		"64e5914d-1440-4410-88e6-5b2d35e26460": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"maildefinition": 2,
			"sequenceflow": 19,
			"startevent": 1,
			"intermediatetimerevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 2,
			"mailtask": 2,
			"exclusivegateway": 1,
			"parallelgateway": 4
		},
		"444ba7e3-0b94-43dd-a880-856052795ebb": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "josesequeirasap@gmail.com",
			"subject": "Gostei da Piada",
			"text": "Gostei da piada: ${context.Joke}",
			"id": "maildefinition1"
		},
		"3e111de3-f982-4274-8358-935c707d1c8b": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "josesequeirasap@gmail.com",
			"subject": "Não gostei da Piada",
			"text": "Não Gostei da piada: ${context.Joke}",
			"id": "maildefinition2"
		},
		"d1d0d856-28ae-4d6e-b901-9a5a6d396e83": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "66de0c68-1a81-45ed-97df-781a10f2b9e8",
			"targetRef": "ee6a1487-bb12-44c0-9059-bc7864f71c1a"
		},
		"334d676e-4ef1-44da-a96e-e77eb7a117d2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "413,353 413,428 295,428",
			"sourceSymbol": "ab354a1b-c3f2-4ea4-858f-f23f2949f78b",
			"targetSymbol": "91e83887-3aeb-442e-949b-c600a2a459c9",
			"object": "d1d0d856-28ae-4d6e-b901-9a5a6d396e83"
		},
		"6e1460fc-5548-4d24-99a6-c0903c639871": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "ee6a1487-bb12-44c0-9059-bc7864f71c1a",
			"targetRef": "1a6175c3-054f-42fc-b8d8-aa147b38d413"
		},
		"e0c6fc53-8e3c-46ea-9e0e-48aa7352e283": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "295,421 295,481.5 39,481.5",
			"sourceSymbol": "91e83887-3aeb-442e-949b-c600a2a459c9",
			"targetSymbol": "f2712e55-b5c3-4d4f-97c7-b9d93132cbda",
			"object": "6e1460fc-5548-4d24-99a6-c0903c639871"
		}
	}
}