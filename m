Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BE59C369D3
	for <linux-phy@archiver.kernel.org>; Fri, 25 Apr 2025 19:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NQP1Z3sz3Lze445JMLxw+M9Zig8mG+JPrP2tJsAt+U=; b=KqgSKma+qs9U2v
	e2AzBxqjfuJ9Lpp1Mn427mTTAj9gc8kYXP6OVr5SUO6oiAuFOTQRvfHCeA5UkXYdx5pDgCXt0BEAU
	YZ/b5izQgzCLLZN7R2IH//8giDgToVjv8UcD5W/zedhsO3PuI2tiIG+d7HWTN5qApMHF38BIoD6fb
	phuSS4ZxNJzFuZBX9+pvoKR+7HWP0RJw2Eub5DJ7e6nMRDbCMF+WZ4gW1QXIqLATv8FBJqlUpGJrH
	AVZDbsbcPQH2mHUqemCjsRqKwSaFKKoqNrAIs7NfRGblnRAOFJS3Cj3vlSkMoW1ubsd4FayVH8a7h
	RqQ7Cp68Z5/Xs+KaFK0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8P69-00000000j3w-3ZZ5;
	Fri, 25 Apr 2025 19:52:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8OvS-00000000h1d-0BSf
	for linux-phy@lists.infradead.org;
	Fri, 25 Apr 2025 19:41:31 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJqhZ031964
	for <linux-phy@lists.infradead.org>; Fri, 25 Apr 2025 19:41:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GL3IxQbhqkxUKygiLbe+Fwsj
	kd3BgGNhLCaIxaMVpwQ=; b=igVIqDtlqvStpH+Ee+it7NLTTTa0+IeKzLD1wLbx
	MHwWda4yv4boL6lAWbdBSxyO414TigFiJ8XmHYSQv6ot55IcQr7t5biJ8ulue4ZR
	WwudKym85y7tLLx653GOgodNqZq6308tcQRnjjgCF04jG/+rSKSQ+oTXelNocw7u
	8Kmdmr7yHVvdCvAxvMrb0tKYzYTCUS4wXQ1azwTh/pg/5pTv0oCi3TweVEOE1XhD
	ugeZRUaa1QvOrChMc4iN6YK3hAfnGtRM39pDZMyS0fwzclCYmIBzcDGG4QKs8qFB
	O10b/WjPZ+VQuJ6AaRM6oevvsAsuToQ1WpMiAQXY9A6O0g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgya3yj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Apr 2025 19:41:28 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5f3b8b1a1so432322885a.3
        for <linux-phy@lists.infradead.org>; Fri, 25 Apr 2025 12:41:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745610088; x=1746214888;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GL3IxQbhqkxUKygiLbe+Fwsjkd3BgGNhLCaIxaMVpwQ=;
        b=jRG6SxKXfzntUbuqAJza2zyt2F+n1u4lnYqIaNwf3AhnlONmS8UJ4Pi8N4gXsl2F3c
         ba2TVkWcnna+LJ/diA0+Tptxw2HYjTj4zQLdjIWbRs1TuUOy/mNSuavU3mmV/jrfmIPn
         W5ilnGeLjsyZgY1ExXy+okyDJFIXJrwtz7v2MikMHjY+bP5NK3KWC6oGWLGkjf/gbGgA
         fpZZq/DrbqrseWiTfb1IC1XllyoHkxMy5GKncPePXePH4gUS4ea6wHN4qa8k7Yb28xdo
         8jaO5Wjzx4ZeIEJA8Gd4thfuIL5VWNzwnfXyfXxowhx7DhqLi10bzznjnfhVwHZtarEo
         pEhg==
X-Forwarded-Encrypted: i=1; AJvYcCX06JO1QnrHsjpQcPZlqeywZEBXKfn6dYmqDlfRtjPMc/XzBcsQieSWUpoNwo1p7mGuIqqsj8EC8L8=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywv1mnsQZBC0QGs4GS8pEtPgdP8HfRThhhoXuVob2C5oW5XL9FT
	qIiVxoKZHB1FdmOe2OAubVaMmFNVvpJMjAri1K7+3P/ptsQvbmxXAYOdVBKU+9c637QlY4/xMPh
	G3g5KGTDJdxfJM9xDDsx655IsLMqBHH7ZYV9zgzdHBFCZ5eGU1W1hUbG1OIFpfAsp
X-Gm-Gg: ASbGncvPoM187h1eUEoDFY1zJpLfGsgrH7Z5Mggk6nVBVB8xnhQalDN8kBCBw7obVrg
	N2jGbM1QSCRnAE7HwTBLsfqnRVDJC8RTH7/psQK6W4JOkc5cEJLl6RbsXLnxxUU8rwM+vhDXUt9
	nTpyGTBv14s03UEpGvCH4NsAmW+EkhBa+2zKUqUPfUDdU5fa2NapTHZ2e9NqButjGxoOTQvmLHH
	UFcGNPy+oWiNrMRw+rLJE52FNCKzY7j81jvRDsk80B2q+f9TiWblttrnxMzW2OL2gPyTGqoac4D
	LcWVkEEQ00buo+FujHbOaSvmgeO/SGzG3/GBFYnd/Avi9jgM+z8WsnzPHYqhGD/r25uGtKsjld8
	=
X-Received: by 2002:a05:620a:24ca:b0:7c5:dfe6:222a with SMTP id af79cd13be357-7c960793e41mr547095385a.42.1745610088062;
        Fri, 25 Apr 2025 12:41:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9sXFC5qtgaAH+0BpznCYCLWqca8xyr5lGiw9XprZM90nD/EbobhyTqGKDtHjNqLHN2anmIQ==
X-Received: by 2002:a05:620a:24ca:b0:7c5:dfe6:222a with SMTP id af79cd13be357-7c960793e41mr547092485a.42.1745610087717;
        Fri, 25 Apr 2025 12:41:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb8a03sm704272e87.259.2025.04.25.12.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:41:27 -0700 (PDT)
Date: Fri, 25 Apr 2025 22:41:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: rework
 reg override handler
Message-ID: <q6zqfk3l2khp3tkodxd4pzhufiesyjcypl66zoqzslolwoveyo@ltrw2iulrkqs>
References: <20250416120201.244133-1-mitltlatltl@gmail.com>
 <20250416120201.244133-3-mitltlatltl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250416120201.244133-3-mitltlatltl@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0MCBTYWx0ZWRfX9eLuP6T3tEks rCJqJklXHc+OPZEYfEwJRya0Hu+JEH+BytZ2Ed9D5PogLAXwuToT7caATf3hsNFdkVGmPvu0Vn3 Vp6MzH1D++MCdI0WuGJVpykEopZoh6jbYiinnHsKyE2HnLJy7/zJoRqjJ0SMskY70WvRwPvtPO9
 5pU0OF11v1CgfM7KQ46FcHg8vQnYXGz96G9P2ArLa2nrtLoerzaTDwVAvboiU+F7v1tn+c2I84v oJAE+biFamRoWDdJN8TQg61lbaBFoXlVS92VGYkri5NMtsTb5jwe1N92h4VuvQjIWZKhjlFnrGA c1ogKaciajVbrlih9u8IJ/AQcJVeZGnhaOefIIJy9+HulajdUyUAf5G8DrpJW4G36twLbJwxkJB
 jo56reJn68YOZMxjiKKA8FjootpuUEZO3rsKn0nJYevtnnFAjOOLOJz8Edh0TgCA10qNYVOQ
X-Proofpoint-GUID: 3NHdOFs1Y35Bkyhmj87wqJpq30RLb9xb
X-Proofpoint-ORIG-GUID: 3NHdOFs1Y35Bkyhmj87wqJpq30RLb9xb
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680be568 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=dnmzA44czj2E3hsaG-QA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=877 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_124130_202134_21E5E721 
X-CRM114-Status: GOOD (  14.61  )
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

On Wed, Apr 16, 2025 at 08:02:01PM +0800, Pengyu Luo wrote:
> In downstream tree, many registers need to be overridden, it varies
> from devices and platforms, with these registers getting more, adding
> a handler for this is helpful.

It should be noted that previously all values were applied during _init
phase, before checking the status etc. Now the overrides are programmed
from the set_mode. Should you still program sane defaults at the init
stage too?

BTW, is there a real need to override those for the platform you are
working on? Could you please provide some details, maybe in the cover
letter.

> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 105 +++++++++++++++---
>  1 file changed, 92 insertions(+), 13 deletions(-)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
