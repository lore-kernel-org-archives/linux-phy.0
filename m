Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0906ACA0EEB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 06:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9U8CSCYvVXQJgTBzFqZGC1+CbW8O6n1u4IwUIA9th9w=; b=Ou5233+3Hw2/dG
	9OJRD8OgiINc/P3eXinumu82zmIkTADkZZFrNAPZ7JZW++iRI7nQK5FfD5IWll8vHHPPmbf0cmvlU
	uYCVkJ5ukwYdhBbSaIp4XjCPCCReyygeY+OImd7UDBzw5Ka4Z3ZCK8Cj+gh+CDF1ZiVOrYDSxo9/i
	QuGyO07MCfvtNlE9yn/6Y8AeVC9OYWLjCAnBkYgRhk5jNODS4m3VptuzNyB1HUV1IqgMFCA8qNVNv
	cq5fL8bY5u7CeRL1xLKAoj+B8V44LbQgd4tyhI4OLJLEweP1HApzsvRCigSZaHppGNjTgNlAChQwf
	hP4WKralmwQgp+9gAoCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upL7r-00000001gBa-3Dc7;
	Fri, 22 Aug 2025 06:19:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upGyJ-00000001BKu-1A4B
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 01:53:40 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LI94p0002625
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 01:53:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fQ6jAh+MsWJrW0ys+uDSW5pSsMHNRIQOD8QB3d9ba7w=; b=gvMD08bFuD3rSToW
	SecdwBe6Lj5LswT69wQ/2Tf715JQYvBfIZncY3lXN3AVpABeqNlCmW0mMIrc2/ue
	8EMe+e0Zw+uGiSXhwNl0cEeV/uayB1EfB/kzaXMQoJFqLWiwoRtxeJ32nyPYnlye
	9D1HD4kpSRFh7nRVI/tpk3u3HY6RLPMtaP4SXFuyPaOpoACFeq18GxVD1/jtQPSX
	byYb84Dqsjn9FIEXITDzjxbfFvvj/HhyyZl41ihq6nRVFjyRUrfQtHHlOESst1oB
	2QPZBSZkp4KUNmmFQJtwTQ8YwYRexFbwRhS/cCYKAl1/ZuY5bUl6DbIhi95mBg3o
	VwAUmw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngtdn9c9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 01:53:38 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3232669f95eso1678295a91.0
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 18:53:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755827618; x=1756432418;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fQ6jAh+MsWJrW0ys+uDSW5pSsMHNRIQOD8QB3d9ba7w=;
        b=RrRNuQqoSeNoQeuHq6vakMO/G1j6RWt4qRzfhkUXLH76Qm7IUNaepRrGY9ZbSQkWTF
         IoEXjIG97bPDOcvpZeDTnplMGC6xclVtdoIatkfh1F2wQs9ctSW48ltGjqy3KrCYMEGC
         lEb29qVnVften8WbZnyKFhx6gT7btqqPJmCMgDVj48V9Hw/DSyy4/JaqHuqttMvpffqL
         M6/rrjnIGfKn9VJwV5IFNCBBshZVFBIQH8x9mnJD+CBAkCQ/V048ytbUiaoE1z7PdVt1
         F5mtFrZC7H5PJcVyi8BgVA6Je6duV4uqhz1qWviibpSqZXe0CMfmbCbImBRMU3Kyf0W6
         +PRQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9+ZQ1Ks8RfKwwpSHQx1nGlQypHdSrzACAC2O9OSqAK8+uymZiB2dSyQGLvGcz9KINv/9X55FoeMY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCA4P/S4xaIhH70nlv52oqJiOTQYCrCOuoA8dZBhwVEL6EpXA4
	nW4UpP/SbnGyONCka3tb1ZGo7VkoM1IYEeAz16txQTyVASiuo+VJm2Ew66QASt0f2hSIVbu3aU7
	BWM1F1JkkwWZEeQFiJV6HRjF1KU7D4uSaKFcsdhxToHVPihoR0Jyz6f6dBc3sT/7YGGG0
X-Gm-Gg: ASbGncuZmAgpKzC69VeTHm2uzR3e10VbHkW84WyTmZod9Fo4IxY/S+dxwvaGmEpWUKn
	tOVMlvk50Fn8BSGsmRy1sfw5QkaxAUvW/qqiW/buL+IkmnCfbjUH8wFWLMssEXmacKmEc5tOY2k
	hCr+E35aULNNgdWoCznDnooM6KcphaVANMs65RTC2TU+ZMN37zFsjRl+EBDQ/qQM8n1qDxBzJfv
	JcP7oV9dprxCleDB1t0pDFIy4BsFxzRg1B/WJn23p6RsaXYOkehFiwydSBiGlBLeEpF2Xi8A47J
	2xfkRIM9kXR1NQz3ejXT7t9cyUonRBll3nia8VshYNUl1Mt09Yw0KeAoeOJ4pdE1P0YFPaH1Lye
	QXPYy/JrcvHbzRHrqEEq2jS4yDfWFaA==
X-Received: by 2002:a17:90b:2ec7:b0:2fe:85f0:e115 with SMTP id 98e67ed59e1d1-32517b2f78dmr2092807a91.26.1755827617884;
        Thu, 21 Aug 2025 18:53:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9I9vJOh+MwLycDuGMJzFuq4TmcBJ+szXaNAIctyyZVVpI/P68vxK3Jv34spYw+h3HbRLGtw==
X-Received: by 2002:a17:90b:2ec7:b0:2fe:85f0:e115 with SMTP id 98e67ed59e1d1-32517b2f78dmr2092783a91.26.1755827617441;
        Thu, 21 Aug 2025 18:53:37 -0700 (PDT)
Received: from [10.249.96.170] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-325129aa68fsm1012282a91.7.2025.08.21.18.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 18:53:37 -0700 (PDT)
Message-ID: <74bbf915-23cf-46c3-b9f8-48bb43ce9c56@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 09:53:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
 <20250821-glymur_pcie5-v2-4-cd516784ef20@oss.qualcomm.com>
 <bm3cp2vyw4rpllkwoxoxwrvsjxrtolcroqwx76bkpwmcdvx7ag@b6hvybyouq7m>
Content-Language: en-US
From: "Wenbin Yao (Consultant)" <wenbin.yao@oss.qualcomm.com>
In-Reply-To: <bm3cp2vyw4rpllkwoxoxwrvsjxrtolcroqwx76bkpwmcdvx7ag@b6hvybyouq7m>
X-Authority-Analysis: v=2.4 cv=LexlKjfi c=1 sm=1 tr=0 ts=68a7cda2 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=AsWi3nSQ2um4y-UoW74A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ggTOi-ESOO10m5ZdYilyTVrmIRF1pEv6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNSBTYWx0ZWRfX90qHeBDFje0G
 LKKjjOrvDcg0gs3n/SaDHZue9WNPOZycmBx78PsWpAIlR8rjQacp4sV4cwBGLfpMwZ9FXsG4pbV
 53VdCOiOCEt857doUkUrupF4De4O9Af1MGK6boRtzVA7t3Ol0rNys41S3886kvOBDLvmBUQijA1
 v911/Jw0rp8UufB8FKoDUdn5otcyVHV06LW4EiwtQUrsoDryA4IppkmR1IaAPRM2iDbGQMl2p40
 plV2bJPC2Ct9UGuukl6bzFXk2Vbs8akhqGBeD0RjcGhnhJK0p+S6RPExr+g9jFd+2XnaXZvdYyZ
 Uzjo6HaRO/bL2L/WSGvBGti4Ee5DCsg0QShSYcxM/wYvGK0KJD0LTaCzK7uxLyiPJUz9xjLuYwj
 mXcUkvbZZ+a0Zx+ILTs+lNHL2zj1aQ==
X-Proofpoint-ORIG-GUID: ggTOi-ESOO10m5ZdYilyTVrmIRF1pEv6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_185339_325887_91E12AFB 
X-CRM114-Status: GOOD (  14.68  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 8/21/2025 5:57 PM, Dmitry Baryshkov wrote:
> On Thu, Aug 21, 2025 at 02:44:31AM -0700, Wenbin Yao wrote:
>> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
>>
>> Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.
>>
>> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
>> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
>>   1 file changed, 32 insertions(+)
>> @@ -5114,6 +5143,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>>   	}, {
>>   		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
>>   		.data = &qmp_v6_gen4x4_pciephy_cfg,
>> +	}, {
>> +		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
>> +		.data = &glymur_qmp_gen5x4_pciephy_cfg,
> Please keep the array sorted. LGTM otherwise.

OK, will fix it.

>
>>   	},
>>   	{ },
>>   };
>>
>> -- 
>> 2.34.1
>>
-- 
With best wishes
Wenbin


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
