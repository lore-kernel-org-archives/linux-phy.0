Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B01BCCCD187
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 08:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yugg/b35OCcvF0AsAyOkcHEcxlTvMPWb8UEpNg9monA=; b=MEnDGRC10vOb4P
	xMIzEqSba84W/XWiooc2oB3k/NDvxaqlLxNfybWUIV4S7C62G1PJ4quNEIvL2g/Kg0AbwE32s//A1
	tdPilGzU/rVGD64teqE5AoV7j35LJOssAtMBcqD2v18bbzb+GU6+osR51jx/RAFCctzUqfDvFO4C5
	JG2ysbrk9tPAgs9S4lcLMX17MUwvuyF9pXeZBLrHi+KVME2BAyw6HlfnUBXPduv1xML5W15D/ydN+
	AFhEBUGz0WfDgWc9kH+GAWdX4Zp7j7SiGVLG53n8VE+0hP2HclsceOnPufc5H6kKHIR+tN155pVVJ
	EJN34G1Xzqr76MWk8RDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6m80-00000005XJ5-21Db;
	Thu, 09 Oct 2025 08:36:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6m7y-00000005XIl-2YWe
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 08:36:00 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EHB5028481
	for <linux-phy@lists.infradead.org>; Thu, 9 Oct 2025 08:35:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hu/pRTCJV3pDmrBwILASxYyavlvjaPNiTFHY9r2ayxs=; b=lmfj4wbabWDD13c6
	JeVHr+pPCPe7kDK9Y1i8X1lQ2nCVMO8lTSxi5q0/7SVBB1xnzPSfyk0o9CdVTVSi
	dMqevlhBiPJR7OiUkwAMbtnn5eLCmrsOzjk8QLV6GKiZWDO9ykfb7BA1atP/fZzN
	pkGg+sQyzvjcG1qRxrEaRzUdkgKoPxaPUjPGq1o4VC/v8ooGB56K5URUllq2Vp/h
	FrrOfnjOgsxskL2nu3FWXMqf2qeqNkUQugSC2nirWS7yCZExFcVKpr5gl6XnTRvV
	AkyZkJjhSxeHarMBiqY5+AJdvPre1Gq2u8ZXBFE9wSMuwCjovPJebEkcRR5Y0Y32
	5Nk02Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kt2be-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 08:35:58 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-826b30ed087so2347696d6.2
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 01:35:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759998957; x=1760603757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hu/pRTCJV3pDmrBwILASxYyavlvjaPNiTFHY9r2ayxs=;
        b=Ctb13BBi444qOrVrfvzpX13Y6kS1uczIB5obWAZjA/R9xd7eIcGXHRGvJnCtzJEsfp
         SwjmStSCJgCieBAWvR5FXiwUz4J5buwelGu95r886yv2RebtCzzfAEaNeK5x6a1kA3hO
         gn4oyUdqKDGcN8Qv0ORvztRyQDif79gEBVtcJdk6ZGN6D8EH8b8LYrZ/W/Hh7ciTUcdj
         tFFcIPeW9dyxaaBGR+lF4CsnxBwXCaFZDIZ0nvSrcbZEieNLLO0AMli25Pu+LdAqZosv
         kIvq3SgTprMeHz6k9NxdBMNLZNh6qGKapMq1OBNNjbJjhkwwrhGhHk+c5ZTh4/uryXUz
         mf1w==
X-Forwarded-Encrypted: i=1; AJvYcCVNBX4LA0CvVVQcHtN7Kp5+WfEBak0UAjZAqQPIqqBF+9wmEXpK/BQShJeF+xxNF0hvGwoekknh9Mg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxS5KInkucMZ7GC8jhoghLzT615FHfs/VZtGhnT0fwtso8Bm3qS
	Fs8RpHI8IjX7/aKxmXxz6FSTPq4xxZpk5UgHITs+fG+GqexDwz2+bAOFVBqDqzOqVHq2fqdJoMS
	4fo6avag44+lXzyHZL+RZzFCoY53pk9KDzjm/CxNvoOAIrPOowE2mAT4hCQKo6Lyvpw9k
X-Gm-Gg: ASbGncvBgcuU05zaX7teoHJXJjeOkAoAjVUg/aykYL6DhCgFp90EnFUnQaiaHaxchDp
	aoRz0kcNFGyVIMXgdqsvZ1zyQyQRy04w7ErVF+0BCdhc9qpGDbOZhNgfdPe4lhgaUs1MA2uSnkJ
	57EcUFJ5tIy7zoRWD1FdcdB8/5UXmS7zYgFGdMUEtoC0z4qWLEVVy/ZfAxplVIwI288MXMIt9ZO
	loOKCY90qp8sF3SeId3oq9hwWnsaWjk13guUPSX+UCpjfO9p/yGKScg5JcXcul+c8lU4qtWWMkY
	eaAqiEyZAJJm4FF18zq/CfYl+HkVombkVuq/D+WREmQFIJ2/K2stEQq2gWgYuAYPGXHRqpORe/V
	yJ7CFwZ6VFkBPbHNecb1XT4Jojb0=
X-Received: by 2002:a05:622a:51:b0:4dd:2916:7983 with SMTP id d75a77b69052e-4e6eac949e9mr63918031cf.2.1759998956715;
        Thu, 09 Oct 2025 01:35:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgYQkiD0jOWnmXizRtOekJynoqnzXlVrb6i9wWQzty768o4CoBlYGKZEKsuxy0gFmxG00SRw==
X-Received: by 2002:a05:622a:51:b0:4dd:2916:7983 with SMTP id d75a77b69052e-4e6eac949e9mr63917901cf.2.1759998956230;
        Thu, 09 Oct 2025 01:35:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9bd7sm1875117966b.3.2025.10.09.01.35.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 01:35:55 -0700 (PDT)
Message-ID: <b5538a86-c166-4f20-9c3a-8170d3596660@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 10:35:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
 <4d586f0f-c336-4bf6-81cb-c7c7b07fb3c5@oss.qualcomm.com>
 <73e72e48-bc8e-4f92-b486-43a5f1f4afb0@oss.qualcomm.com>
 <8f2e0631-6c59-4298-b36e-060708970ced@oss.qualcomm.com>
 <qref5ooh6pl2sznf7iifrbric7hsap63ffbytkizdyrzt6mtqz@q5r27ho2sbq3>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <qref5ooh6pl2sznf7iifrbric7hsap63ffbytkizdyrzt6mtqz@q5r27ho2sbq3>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXwdB9Ur3yGANZ
 BEzUaMkFdoFJzXCfHEI6e0pR2O+yP+W+xqVTigigsx+Ykl0DZJGEfnIRtCndsu474TVlw5ylDoH
 OA8GgEm7GlsJCD6U3ZZaCoNrhFlQR6EDWLJ6ZSoFigLnzNHdFSaxlXIVS48KSqg4E7rrB5sB2dA
 4gCLsTb8wSHCUHFn4iXFCPw0T3yUllqDLaISmRFhFaIrJCLyQFSrKkmTCgUWm9OuESgWQQZ4JAY
 JUQSicMxPeJ+YX3AUYQX5w89xHF48m37WtSn0BrYVox7BHUhjwjfR8kP93htCmmPAI4u5GCRVNV
 fQIlSjwHiHlU9Vea98DRR++CVRO8IgTGs2VGVHUFsD5b32AY9KYo85OEwDhSi5sj683Gllwt3JZ
 NGS7OGveh9Po+XVVjsmLnF0sbCtMow==
X-Proofpoint-GUID: Q2Ja7Onko-xL5scn-cp89cI4aO5HV54M
X-Proofpoint-ORIG-GUID: Q2Ja7Onko-xL5scn-cp89cI4aO5HV54M
X-Authority-Analysis: v=2.4 cv=SJxPlevH c=1 sm=1 tr=0 ts=68e773ee cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Nv7edSWLeOU3OsZLW8MA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_013558_675793_6B9D890C 
X-CRM114-Status: GOOD (  17.90  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 10/8/25 9:08 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 08, 2025 at 11:11:43AM +0200, Konrad Dybcio wrote:
>> On 10/8/25 10:00 AM, Konrad Dybcio wrote:
>>> On 10/8/25 6:41 AM, Krishna Chaitanya Chundru wrote:
>>>>
>>>>
>>>> On 10/2/2025 5:07 AM, Bjorn Andersson wrote:
>>>>> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
>>>>>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
>>>>>> and x2 lane.
>>>>>>
>>>>>
>>>>> I tried to boot the upstream kernel (next-20250925 defconfig) on my
>>>>> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
>>>>> is crashing during boot as PCIe is being probed.
>>>>>
>>>>> Is this a known problem? Is there any workaround/changes in flight that
>>>>> I'm missing?
>>>>>
>>>> Hi Bjorn,
>>>>
>>>> we need this fix for the PCIe to work properly. Please try it once.
>>>> https://lore.kernel.org/all/20251008-sm8750-v1-1-daeadfcae980@oss.qualcomm.com/
>>>
>>> This surely shouldn't cause/fix any issues, no?
>>
>> Apparently this is a real fix, because sm8750.dtsi defines the PCIe
>> PHY under a port node, while the MTP DT assigns perst-gpios to the RC
>> node, which the legacy binding ("everything under the RC node") parsing
>> code can't cope with (please mention that in the commit message, Krishna)
>>
>> And I couldn't come up with a way to describe "either both are required
>> if any is present under the RC node or none are allowed" in yaml
> 
> What about:
> 
> oneOf:
>   - required:
>      - foo
>      - bar
>   - properties:
>      foo: false
>      bar: false

Oh yeah, this works.. would you mind submitting a patch like this, with a

# These properties must either both be under the RC node or both under the port node

or so?

Konrad> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
