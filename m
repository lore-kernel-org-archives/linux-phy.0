Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E32BCCA470
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 09:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1+3kn4OxwvSjwh7HxsxReebj+339JBMva9xOp4FjYA=; b=RcQ4MIwD/2hxfh
	3A2CB2ewICjrQ6ibEWljmkR0/bsQs3yGvi/6XO5psvaDCqyvWe0593WPbKAS6hJ5PLyf7sWCDJaxf
	o2TV8DlBzMqAFsxRL/HaE5hDw0EStb1II96GnsgjDStHRmay6C7xfyKp2CDsmlfr+WLbylkXgabMH
	vknTYNaTTN+QdY1pWkio3r07nzBntladKux2t5A247rQFjarW/VQEpuCB0qbmiBN4GBVI+y3dHmb3
	s26qNUDX++0VHn2JGjUhxifpdihRcbL1XrfJMA1taBHioERnKz/sXRd3G3N+bdSFekE7r25OfApvh
	b5okrGE+nnptmJ8NY6jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6QDG-00000003Y1W-09EC;
	Wed, 08 Oct 2025 09:11:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6QDD-00000003Y0g-2cCK
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 09:11:57 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890N87009324
	for <linux-phy@lists.infradead.org>; Wed, 8 Oct 2025 09:11:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RzZHHkGJEfwd1Se8SA0pc+Db37+3AwYJluCV2KmgWEU=; b=JMdemdZaJUP+7wpa
	tW65ekjIBzNsC2rjj0t390yqI8Je2vQ/zKEpOu3tDrLVjRwewQYBVk6CKdutPXhD
	sDX6bRkzP4QOuIcamCuWFUUaLez5qNg07ionp0vpEjeMzbv81yNp1cFUQqouTYDB
	FhuhZAkG9POIvcKyvLsVGFPy6WKwyzpnp1X/ON+9BLC1aT1LybN0MPBu+c+s4tL/
	lwzE+e2MWuFiIiPt1G5thxNVYorjUAuk+Bz5SzgFcM1ztbtVaGRZMMGZQvZz/9uq
	NXXuDobjlkURwW+JhlE3xBD1yymCRRBBHgOwsQKCjvQlXfFdQKWV9OQB9/6ja1A7
	IbpZow==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu9wh7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 09:11:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e0f9bedf1aso22377461cf.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 02:11:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759914708; x=1760519508;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RzZHHkGJEfwd1Se8SA0pc+Db37+3AwYJluCV2KmgWEU=;
        b=OqrKQi9TNu4tK4b5jPCJtFm4lzhaYy6x4DmJj+bebzhEe9BLJo/5oEWapdqecpZLjw
         r3HVD9Qf/eYdDL6lZEFMFIT7JhE1CuOO5E5ldWt9Ypv3tZpWeNo5p1jjKQS7ttMObQ3m
         ZtMt3YPxWDHraZpT5R+TKF1mOynLR9bRTSeXwUVHjuBeWhbBZ8pUiij6DMiHSjZrjKfF
         RacaQbE+Jddu8t1FimgGnEFj7aYDbQ+plhvfSZ3rrmL2JAozdbtukVZW6Z8svGttB9hR
         tfTM+EOJOIvs/mY50Cczh4HexacfMJel4dwcVRwKoG5otWQl9aOPcT/H6F2yI89wGh1J
         +KGA==
X-Forwarded-Encrypted: i=1; AJvYcCW3dllc/27rij2OGTPIkf+VMN40jxQNDau8QLum97SsGvQpjQE9DvvulpqsFClwSHKhWu9ABmKW3Yw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5am9QEqfZ71v/UKREnWQpmK+UsflDLCh/X0GlYJov3u6o5+jy
	Gs5WG0i2eM1OQ2m4Ulpg/KlhPVDhz+3mx8mClklYV3ThEm3lM0nLO8j6/Y5+LDHp02pYK1x5Vzm
	9Q57cUTrx+th2GHO5Ld0X8CSh6UacFD2HrNvZ9Cib/o9cB5SXtEV2XR7TKP5EGppA1ygJ
X-Gm-Gg: ASbGnctnPr+O48v9gbJ8ZBf2kV9y9wEsN+tF2Lbw39TrCcYtzpvk7EQazum2sP1j//R
	/0rcdI/iWykaxcBaIE2fDZal/Md0kuQkatXCNUjYFx0vkU3u26bL80O3Fy+hf0CHYaC6Deo83ED
	FFTVCvuMuYon6wlVGGePirXBVdE2K/6XG9Rl7GgqZxWvbjEdDPFy6QZmHkQAU8WchLiWHJuObZR
	RoF9fv4PV5HIRprGdu+QqNDZur2nNPMqrLtbz6uMZh/hl4o6Zg9le2Ilie986xZ0s/wKwCOBHiL
	5gZzqA3brf9csACJ7pV45P0ZH7R+Q5jRwk8yMGxruVLvMqG0/KERlrE84xKoHTXASKOISw5trJX
	6TzrgdnmaNaiKAydcwiSMXUuvBnM=
X-Received: by 2002:ac8:58d2:0:b0:4b6:2efe:2f73 with SMTP id d75a77b69052e-4e6eacd5b7cmr24322161cf.1.1759914707436;
        Wed, 08 Oct 2025 02:11:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgmdkC0LE3dHLfUFj4RWEGCX/zas7y0dJ6kj/ES5PA+uvEzb5Ga7Acz9kcOVJYjeSkLcG61w==
X-Received: by 2002:ac8:58d2:0:b0:4b6:2efe:2f73 with SMTP id d75a77b69052e-4e6eacd5b7cmr24321931cf.1.1759914707010;
        Wed, 08 Oct 2025 02:11:47 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6397c9355c3sm7862106a12.0.2025.10.08.02.11.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:11:46 -0700 (PDT)
Message-ID: <8f2e0631-6c59-4298-b36e-060708970ced@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 11:11:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <73e72e48-bc8e-4f92-b486-43a5f1f4afb0@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: wHVkZrSSiZZouuszDFjBUaMX83EPUqOo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX5MmGu8G/yMYR
 W6vYN8bHmwryLikpEdUKLbcPbkzM2gmZ+ok0KNuFYu6IluDhhSi9hLgWitvotih6qc5OJ8d9osn
 Gqx71j9DS8LkWC5FaRbXnzEDkUYp83XFZ32rQkpAg01g9KSpBr5PWmdCYoW4Lra/SXWg5jLvo0A
 aOONqEXyPqxMZwz64kiZuWZGIGmcMxs4q9u5u4R2ODtM6xhEEt18uK/ZoNv+sfQ8ZTfjMM7kldo
 qfF6PQmsjxjT12pSsGCvqMKf8cTPg8/CZVJ4o08DRAxbsVXggfTtctuPBVu+jS0KSGw9kb49FH4
 qJQT5ohg/fuQPDemzPHlnJYyKFjzc7v+7AMh8x7XY1qHyqIJzlZYTNGO+qjPr8eGginhM+GvOlh
 h+n98HxRQgR2kb4Lpqd/DT/ZriTsKg==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e62ada cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=lX_GYFQQ6rhPkfvadcQA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: wHVkZrSSiZZouuszDFjBUaMX83EPUqOo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_021155_784380_3F3F64EF 
X-CRM114-Status: GOOD (  16.58  )
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

On 10/8/25 10:00 AM, Konrad Dybcio wrote:
> On 10/8/25 6:41 AM, Krishna Chaitanya Chundru wrote:
>>
>>
>> On 10/2/2025 5:07 AM, Bjorn Andersson wrote:
>>> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
>>>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
>>>> and x2 lane.
>>>>
>>>
>>> I tried to boot the upstream kernel (next-20250925 defconfig) on my
>>> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
>>> is crashing during boot as PCIe is being probed.
>>>
>>> Is this a known problem? Is there any workaround/changes in flight that
>>> I'm missing?
>>>
>> Hi Bjorn,
>>
>> we need this fix for the PCIe to work properly. Please try it once.
>> https://lore.kernel.org/all/20251008-sm8750-v1-1-daeadfcae980@oss.qualcomm.com/
> 
> This surely shouldn't cause/fix any issues, no?

Apparently this is a real fix, because sm8750.dtsi defines the PCIe
PHY under a port node, while the MTP DT assigns perst-gpios to the RC
node, which the legacy binding ("everything under the RC node") parsing
code can't cope with (please mention that in the commit message, Krishna)

And I couldn't come up with a way to describe "either both are required
if any is present under the RC node or none are allowed" in yaml

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
