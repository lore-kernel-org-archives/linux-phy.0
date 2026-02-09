Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0315E81BBB
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 13:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/FckhUE9eP8doKYX1a4fmfx9jovdzfaa3wj9gPkhCc=; b=Fo8tbR1YPihGDv
	jwAnU00I9WZb2/TK7FO/Gl+KLKAKFYB2tqBLmAe6iNmXjjsOMSlsaEhfSWswHktSTbnlArr+Yiq0E
	cw7uq4SIonGpFerz+dgQBAESCVMW6NkW88zF1C+RffX/YsYrdofPr8VS65rhiKKkebCFDUsc28glM
	oA5/FiixVOhRQwR0vJstGLVqT7g8eUGMnlwMDNhvU7uU/ZKd9Z7WVzYbPnCvY1UmwRq5aNYui0tWg
	H8z3Qhy41Ff603BPMpFn2Ip7lPKQ7tCvXXHdwjaM7kxM43TofLF0qJftzwTy87MKYTqYF0uvVjWtU
	ep6kr4NPI64gaW0WBr3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpR6y-0000000FPtH-1Vtm;
	Mon, 09 Feb 2026 13:15:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpR6v-0000000FPsE-3J8h
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 13:15:31 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619BF6tG1924447
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 13:15:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yOUpcXxCP89PrI+tA5PEAS3X
	FB2GxlbHv6pOAJPowUw=; b=hAmBs/pKw/0T1w0TAjjC/FZEN5R6YPH8wY26Anmj
	EVzXxnMInaTQWzGOBnNdWjcF6nI7Iefn/bB/BKwv99KJUi+ABNvlz53HTrhTvGsk
	XakLx1xEYguhSvhvkkc8RE/bizD3G4iC1sSag8LYvsw3PTXtJ24JTgdydf10B7aA
	ysBRoD/31O0A4Do/RbR7p3Aq42fSgwsZhrs7dED9vWrw9gtl8Ru6d6EA6hg9JZdK
	3B0OZzh71e5Mf5vW8eIgnImFAK++Rip9c7djPtAlhmjZSM+SukodJ2tdFk0RBd2G
	TR/5Id1a27RzU+7SJ6tvQLGAklZOUD/Z3/lxV9s1EtVekQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c796kshnu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 13:15:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70ef98116so1129331485a.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 05:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770642928; x=1771247728; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yOUpcXxCP89PrI+tA5PEAS3XFB2GxlbHv6pOAJPowUw=;
        b=gQlIROxRHceDMLIOFt+e9f37SCbn6QAmEQX40zk/jz6z5uB3dSHvtxchf8jvpe1knS
         2KBANrH78JmShtD0nPUca1bIK6NCOTAnxusabuQFJ4dMSaayd34cNGqp42y6nU3BpZ1w
         ph9l8t1I2ZeFkgTp1tf8ndMoYcBzjhcoppRNkv+/ooGL7M7SBGjuCiqFGImSWYr5iBat
         VJH92VumvSCoR9pdwgQsYDdS08MTbL3tvrcvKuGknGvHpgUzi74CCiHxnyNKFhq5m8NQ
         KJdtU/ZWLYc5d6pfntE9Ixptc3/5Umpfe3pwV9sNLn/s39fuGqCdk0utIQwQdoLYqWgE
         gnPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770642928; x=1771247728;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yOUpcXxCP89PrI+tA5PEAS3XFB2GxlbHv6pOAJPowUw=;
        b=gyvXN8MnSmZ016/KBeshlXhuqOBBHdmtxF0KyiHphVSME2Khs4FXk75w/zT4W1z6/6
         TL6spqjN8U/TptGxl4XMaJikCQZWiVe+nHq8PXZ5cBgsqYOJTKoXB3c1D3E9yNeX84GD
         z8oDl4bEPH1ocd6rNh9Lu9wfoBuuE4CudKyXBrmlZuKr0ZpkgO1LCGaKwVRbDUS1Pnyf
         /fV3KcpgQPSB4ThoMqJtBmqipQIvRcznITtCtJnPagrQXwYtALxZfnaxXjfoviCJxJf6
         l8Est52630KT/InVLcm0/cFTueBPtU0wTCKbI53P5ojf5d4o/vZu25QMEqhc7SQNnVym
         J5eA==
X-Forwarded-Encrypted: i=1; AJvYcCXf+WHgs6GNC8O465b2DHyjsvpbqMMeWKgFSeAg99KYyrxMnszIOdH0ZwMJRN+9WXQf1nG5y103lPk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZAz1bQf8sGuWOT41lGNarv7RIpcyPA93Ly5P0s4hoBoFBZ690
	4oCWzVdq3n0Rt3uIZ0wpag0S54p5hozWMbD6rBmSND2RZlY55TR0NHsGYGVuC8xvnCtkZuOl3U+
	klJpV33YuN0Mg8bCppCUKcEzOH6NJqwNkfdBN2Dral1cScWAX9jjMeP7AR/NjDpKr9UTO
X-Gm-Gg: AZuq6aJgxLfYJ3P49upe6w6dHfGzU5TkOOzo5KRiN+qjPRVc4z2mFbbXB15nga7UaYe
	xC078B54gfwAbJZiRSVoTgvHFcx3f+PptTFu5ts/1sz2UiYHLXQsmKeE4CMcuD3M6cLi2GE1Sx5
	PEw7lrahJhUEmIHmgdDWvcUAU0p7nEcCoZvzybMEW/WYDLh3rF3GoKq7FI5TdwH9pCqhBHG849n
	vh8Yieg3Dm7xTIM6FvxiC7kdNRBR/Qjtp3VJmu7vIwGMJIVO3pJPXOUfQudX8h1D5lJ7kIdArcz
	qWiFUmKoJ9/ERU8/I6gh+7GwnVWZ6tiGmDgJOv7QVLKXO5iuQ/ms9byqOoTKGsehZYjd4bJyUh0
	KK0ZQfCkOJavLN1Lc3qL40X6jsl5Dhq0y863nfvhdhQpXOJZ2hV8wri9d+1z7/LmlkNmdThLVpz
	e7rGgT44pyraFVma+s6CcXje4=
X-Received: by 2002:a05:620a:1a20:b0:8c5:38d1:7734 with SMTP id af79cd13be357-8caefeb517emr1356025785a.54.1770642927981;
        Mon, 09 Feb 2026 05:15:27 -0800 (PST)
X-Received: by 2002:a05:620a:1a20:b0:8c5:38d1:7734 with SMTP id af79cd13be357-8caefeb517emr1356010885a.54.1770642926741;
        Mon, 09 Feb 2026 05:15:26 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44d298cdsm2607750e87.52.2026.02.09.05.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 05:15:26 -0800 (PST)
Date: Mon, 9 Feb 2026 15:15:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
Message-ID: <jvitdcolh4naqjdahaajlzdctcmp3sy5odiheeqacps6pcbg5t@zx3jliileazg>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-2-87ca84fd78b3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260208-refgen-v1-2-87ca84fd78b3@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=IeyKmGqa c=1 sm=1 tr=0 ts=6989ddf0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=aHvCONSEC-igqZHWBgwA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: hJruVr_shWa3tB7aaLesscbgDrrKpRg-
X-Proofpoint-GUID: hJruVr_shWa3tB7aaLesscbgDrrKpRg-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExMSBTYWx0ZWRfX5/y8/D7toJsK
 hQkiEerLCb7sXZfgJGV1U3E71pWXy5ZGdCxTiab4ch54seGqr9Z2vpwTbcaKAnMpzAVYOevoh+b
 Po9fvZXym9q5YK3OO8MVspDkg/O4601jgypFDDIEAdHNGOSBSPzVAgcVwy4a20mpRfaEZEWou6e
 8aY/lZ12WwPZyYjn+fPh86Frmmc/b9uh0RT+2GHhtMq6GITIdoNyQXwqaOC/c7/S4t/L7x3TMAF
 /1MTVqwj/O5r42s4Ynrvx5YeBYPXcjCEJ70R08Xblqma7eoAPa+ryKXZ08HQt0KPIfjAxZIu1Gd
 dEXdle7DfkODUe8d/kdum3sY6B2vDBeX9OuZKJA43LbVdXB7eXUh8yAfSx4CRLpfocUlklwu5e2
 ksYFLYVZ2T2Gch9vh34aMRVp7V2yzBbsgvHagXYbLhjnQiKo9RWDNCfvlyA+jNqKVR7qxi9K3Hm
 G+LfUcOOlv7b66uyguQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_051529_942938_661B7F55 
X-CRM114-Status: GOOD (  15.05  )
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

On Sun, Feb 08, 2026 at 08:49:40PM -0800, Qiang Yu wrote:
> The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
> two power supplies independent from the PHY's core and qref rails. Add
> support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
> glymur_qmp_phy_vreg_l list.
> 
> Update both Gen5x4 and Gen4x2 configurations to use the new supply list.

I'd ask for the DTSI patch too...

> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
