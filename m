Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE102CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 10:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgfKFC+Y1lWO+KBVlqkgfRl548vmNe8X19cZgOHwLVE=; b=VZMek8UFqK/if3
	VCs0Qjm6rXsw/EfvmwuUywrUPm4ukV0bM/efYYOhkU0fseiLUx9i5ePb+01rfrNwg19VZXv60XRPd
	BwrDuUA6x0IjwUaetf+vZydUdqJQe8iUHNO35zEPUOx77qc1QSQs0+mBXG9dmq3JUfZ6JrMAyQV9w
	JAhLW+u2AIiJb5c/MVemQcHmQzrzVhTFG8mJFhFIv0PTch4hX3Pd/k6Jg4pWIUS595pDiemgS+pbX
	cFyo+S1z2lKAc5Mr6JL/jRwiq2cFwoddHYw2jKGi3eKMD5gHMokMaTN8GBdvP8ItVi98R5YMlqKCt
	B4mspG86Rbz23lVFzStg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1jRf-00000008DFY-1eEd;
	Thu, 25 Sep 2025 10:43:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1jRc-00000008DCS-3EL9
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 10:43:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9lVMA002665
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 10:43:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LyNgLzLMWc1Mnqx+dRpZQ1k73x+Ofm4U0A3bsduzpwc=; b=f1OAnUTZA5xmOQeD
	4I9UfW6m5EmZd1fnOykAdpPsmr/Vy/G8wk+ChzR6yz8Xknu4zpaawsnJL+e9GkX+
	7lK8ggPsRfflffJvU4OM5U+KIyJmtdFmYsM2/rqoCE6zRDblUKPQAZ7YqW79jeYu
	FR7psXdcy3PEtrPH58841naMaSLKVkYjj8GZjwy4lzHnjNV2BdkxTwcX+uChkswL
	4bjOWKMwgbqKlgJFPuNapscqf0yjPpUvW13o33uqPzpze40aCUQQzbWj6/CUZUo+
	/iACCAkZDg6azDvoLri0cMdhI0MOcPOAMxHo883uaFLkNtp87n3W/sUZY7R649NT
	sXmIGg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf2apx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 10:43:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4cad9f8f93dso1631081cf.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 03:43:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758797003; x=1759401803;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LyNgLzLMWc1Mnqx+dRpZQ1k73x+Ofm4U0A3bsduzpwc=;
        b=koK11tCU48buEjOUEp/V0VPtPBBvt04kOAWQx9ES0knu3m29yF4nx421sprJhLecdo
         KUWnbOKhViSN/CuxAYKkuFQRGyj74Prq35ZUADP9Xg9RDmVwzpRGMCuOBJg/wZN0fH3e
         /QvW0G186/Q77qMGyKgvBS4aZphttj0OtTuw4aLsWiV+7vEXW4Bz5GaWQaztXUfEpRgX
         D8Beb/hsL3fGNya8lUa4JoM87qm8zoljetUKJaTgtjNBYvJn/CswLheNbFw5k+9m2uh2
         YK7h/jsxLy+Qb1Mv2F+K7YpnSUC7mS9yVQSoSmiTOshT5QWpZ4X+NS1LgDIAi4leYQz4
         bL3g==
X-Forwarded-Encrypted: i=1; AJvYcCW6mW7hsJho5ICBb0Q+gjrryk+7kr1juH9AaQ1ug3HNRu7qVR27qVBURrmy2vnnGyS8NemI54fKUPE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAmblaeNDg07onpBkZqC3NkGw3HisweI6aYWKCkoLxRbMNPHru
	cNNY0M9oletOsQakZ3UcHf8IySHVMzoEAO7ivmU6eFhlmeD8bCCHuMh9RzV2qyyvMPr/60CTVcT
	Uv0bxkDTkqgG/mFe7h6LJzlIASulC3SUwmljSClINH9FVkn4JiRKHDpQ8p0UztRkbrVuI
X-Gm-Gg: ASbGnctOs58SfFBfOIjh0nUMVyaHdlVaEkxmRfcxBe2Qieb0+FhGPWBacQVcEQszOBb
	BsqZ9Gdx4J56X5FCHgkcTSfGgWmJbEv/zNWec0WkgLMZ/yQ/7ppg4N2diIIpjHeXG1e7zN8Mcfj
	NSSinhCKapykajMDy50dBeZT2XqUo0kbxzmGsuYdTlYAx595agg1VGDZyyJuBNdbxLdu55hhenp
	gJ955IMOBOvpFt7kgNMiM9vYwJNacOqqu9xosyvtLpzqz5tPnA8l/jIY9E3z2d6H0GNAXrRbKg6
	0Ay2IGJmPRH89hSJ9FPVo5fYi1l5Sf5VsUv8XvBeJFF2dvBBu2nzwVG0Vj2Qoyi4hDX+D3/mGCr
	llzl54Y5LLyHtzFDHAKTD6g==
X-Received: by 2002:ac8:5d08:0:b0:4d7:9039:2e87 with SMTP id d75a77b69052e-4da47c063ffmr26594231cf.1.1758797002844;
        Thu, 25 Sep 2025 03:43:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRYUaRRp+tX2H+EUDkPQlbMlY0IAUeEcDN/SEG0LxWyKM6rOpzeC8AZaqcyLUwx8dK85q7Pw==
X-Received: by 2002:ac8:5d08:0:b0:4d7:9039:2e87 with SMTP id d75a77b69052e-4da47c063ffmr26594041cf.1.1758797002219;
        Thu, 25 Sep 2025 03:43:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a364ffa4sm1010479a12.17.2025.09.25.03.43.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:43:21 -0700 (PDT)
Message-ID: <bc866f21-9b41-43dc-b450-59a25d547b88@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:43:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: aGrk8KyHUn3Gll46jcwm-1bEBYD8zB0t
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d51ccc cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=O8mQQSza-jboQJHTzfMA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX/7Y+vFTDDiVy
 lygiVP5KPvwsQEohA3qIYjK1dQ36vPidcO6INWWlaznqe04VdsF4ea4+XuWRaxE+DJcLhm+rDLw
 ESC9ugAN4fCGjQP8RDTbc7ZEBUeBQ1pbLjTeW8PmHjWAysXyIwdvXHi3CPF0kfEKCy9CQtU30r4
 4Z0Mxh0BQbs9oxh3vvEtgKsErwctLVeMk6j7VSqiOXP1+FBx1ElD81zxyMRAKFOTQP0LGdbUSN8
 o+ihyZu7ZhGVv3W0caD18CK8Rt921EK9Hzbjf6LQ0UfUSofR408CeXeQayynx1evFlFKs3sL+N3
 mbhE64uOEuhEka2zuIWS4hcc4O6islwtRLDQKO00JpwpJ5Rzj0BTQSTsJF7+gpIrM/w0BcC7yq2
 y1b5aF7h
X-Proofpoint-ORIG-GUID: aGrk8KyHUn3Gll46jcwm-1bEBYD8zB0t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_034324_829506_AEC4DB9A 
X-CRM114-Status: GOOD (  14.22  )
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

On 9/25/25 4:28 AM, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.

[...]

> +	/* override hardware control for reset of qmp phy */
> +	if (pcs_aon && cfg->regs[QPHY_AON_TOGGLE_ENABLE])
> +		qphy_clrbits(pcs_aon, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);

Clearing this field is going to prevent the PHY from ever going offline

The HPG says this should only be necessary for keeping the phy active
during MX retention (and the listed usecases are USB4 wakeup clock
generation via a respective _USB4 register and/or USB3 autonomous mode
operation), both of which are currently unsupported.

Are you sure it's necessary / desired?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
