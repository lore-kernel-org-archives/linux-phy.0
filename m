Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDC7EFA1FD6
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 16:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5InSEpHST5fIQVFkdNrq00e+47aJVBrD/OAcXr0t6g=; b=PtlXjoYEIW72go
	sU+BS1qS/uGVrXRqcyNu1iS65heIEVtcu/MKTRdlTRIZSUNEmKeEQ/zV7Bm+NMcguUy5s0ZaJbvZK
	Zze901z0cnmQ5dPpc3efpYmJxY4AuWVWCUzbi0dGP/lUrfPl+Czgzv7PdeJlcalRQ7h+8T5oPrSvi
	tUlhAkokv5jFWHsKivXonSoeG96Ur6EwwUUdIBrxRVCJdntqe50s6CImmGnGFX38A8Zy0DTsMXkCG
	3yivmWzuIXo5eo2NPrwn3x1JIpG8uX7f/J/dfjgWxyO5j6wObPCrzntR+jTPUwEcEBPMvD1byZpY8
	gJWfqSjMH8fFCztC9+OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFaWJ-0000000AWfK-2Pdm;
	Wed, 22 Apr 2026 16:33:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFaWG-0000000AWec-2y8b
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 16:33:45 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63MFfKla2956096
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 16:33:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HRigFCG4ycwt4LxTWXw4QbrO
	ejQopPzrlRFYZsGJTnE=; b=Gl9AyGXQlbOqFY6lkNl8l64KgGYhbVIGrx+vlBgR
	f1Hbf7lGJvFVHGe4aZPySX3FgBrDfyP/E+Dzri+wjgWfe1JxDQSMpjbO6sN+xEUV
	WgbpOv+QPyJFXMropWBb9RxlQWyfF8FEVqErNv5GP4KEvqT9LA3NJj37loA++6Zj
	nOlbfgt6BnCRaLwJrPJCLp3EfVSNgmfnTMj5w4fYmBkJ6sry40YlVidG9j7Ydphl
	xBns3Gz7Kl10ke5GCwSyTMy952saEUBHFX0kH0ud0sQiZk7rsrUgPPtX85UQwZSh
	JwL2ElYROvHqisvOYchgqaEAvBEgNvcx2F72glXC473naA==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq16q06g4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 16:33:43 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-953f6e0f1e0so7194391241.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 09:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776875623; x=1777480423; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HRigFCG4ycwt4LxTWXw4QbrOejQopPzrlRFYZsGJTnE=;
        b=JpkU8a6irHyv8Qtw+NZFgPs5j+NDU2TE1N8hntN+zZRQR60Yd5cHbKyISGuEEW7u2q
         t4C6bun5ueSSQVtjJ3ZPGSAuUqwzF50nHYZLF06d+XKF7h3PBR1ctWBVynQ1fYXeTIRS
         EZUs9qCtooUi9nAoHqLk23TmcVRcpp9xC7N4Nn0QKRzDPAHV+ATKUo+IjFnASEOCjF9q
         ifaZjAVpFs6211fP8TQwfkNA5Aq3v0tV48GzSUaxx7UP0hjESV67FqruAgynuH6EmZb/
         TC+Wt4b+ApQpa1prwCS+AfWfHm4bZ1Z7gkkkKwnLreb6/U/zAW3xrpHCk9LUEIvS50ap
         mwQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776875623; x=1777480423;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HRigFCG4ycwt4LxTWXw4QbrOejQopPzrlRFYZsGJTnE=;
        b=rEF4+MIZt1c5UI9Rb8CpAjVxtbAmSrivB9vTrzBrOVU+XL+7TwGT4FqE3Q8uR9ZEe0
         JCqNVjt63DKnu9vlDLRZkBxQBoHIAHwxCC050UmdwwCv2sr2ETMmddnpxgLclyn8e4t4
         4Kmzq65MgOZEttfN8SX2XwF4TjnwaDz5+nIXLoU1zVP6jemeTXgbopV5x5kvgnr3BD0c
         RsuovQfcu1wxJ5TKCMl1Sn9PwpDVe1XnLGEEf5DBtsbNfvEFpKM79GSIU72dYtx3hPCK
         YleR/KWE2btMOVDd2F1DaVNpQrt/wMdD6dBEU0z8XiGGnR4mEWOdcKaOn/HHjEpg7PaM
         Mzxw==
X-Forwarded-Encrypted: i=1; AFNElJ8pKRGbD86rZHxaoqI8eGe+V5dsJcYF9FUlRvKPCO3urqyFy8CQiVJ+zjlpCEJcPlOw+00oqkq5u58=@lists.infradead.org
X-Gm-Message-State: AOJu0YwkHQFz0bOXNTvY3RnGQKXj/9v2Abom9krz1WE4B0EHEesAD661
	MonyGfkNgMII+XyQkPxxefL++IbRPXWpnKLIzPcjC9e2HiV/XE376enQE6wU3E6fjPy7rFAZP1c
	GgdzdZ6QldMo/Ry/iHSLHWfYZlaWlcVuQEnHnww5s6SaNu7YhZ6ba+/uOXyK4NmnEDby1CDZxhx
	lB
X-Gm-Gg: AeBDieuS8nH+Jxg/dlR6fVsOTRwiK+gf16ZfJasYAlKNLQYckm+Jj+FV8rKZS8VNXo8
	4fsQroGloO9yuwhsskC+0Tw6AW2xCLd0qEDcCVnki9iJAgdBn5Iqltyg6syHkELx5KQnxJ8jN3i
	y0CqKIIqyLJAB97efTS21nGJqnrSFiUaTJ8oQZpkBoLzyaI8gXTDUThxMTkD0focg7ZCi6MUbVS
	8vNPqRexJRrG5EqfiTCS7ba4cvqXErnIazil56bQrsZZzmUEobYnpwaWkjXL9v72awzkofVMFp0
	hLmwW6lvwpUjbnHSambTHCb/F39TWq9B5Ensvsh32qqr7C/jvYqytmF5SDPWGIiaaz+nOsrqJi6
	2Azp4NKwzbGG3O9TvjacuxO6E18Ch8bcXKEryYoYcxfVq5bd5pCOxLv8srwdyz60H1yPeOGM/tU
	bS8d6VqikzKRU+BUHBcTAdbArqzDWx4wXI24ygySDSy9abcA==
X-Received: by 2002:a05:6102:94f:b0:605:852e:6022 with SMTP id ada2fe7eead31-616f464119amr12703651137.2.1776875622805;
        Wed, 22 Apr 2026 09:33:42 -0700 (PDT)
X-Received: by 2002:a05:6102:94f:b0:605:852e:6022 with SMTP id ada2fe7eead31-616f464119amr12703618137.2.1776875622322;
        Wed, 22 Apr 2026 09:33:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4185bc5e5sm4612926e87.27.2026.04.22.09.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 09:33:41 -0700 (PDT)
Date: Wed, 22 Apr 2026 19:33:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
Message-ID: <dyyfmgpxzpdlrutxi7gy4fudhpwvlljiylbbcirq6tgs2zr5yt@lpkrehmzgqpq>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-3-c38bef2d027b@oss.qualcomm.com>
 <df40b4d1-6133-4d49-a7e3-47cbb2b058e9@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df40b4d1-6133-4d49-a7e3-47cbb2b058e9@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KPNqylFo c=1 sm=1 tr=0 ts=69e8f867 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=906CIqcWVj-ks7o9AA4A:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-GUID: GZgwcpOh-UjmobVQBJunDfrAz4Oraqt3
X-Proofpoint-ORIG-GUID: GZgwcpOh-UjmobVQBJunDfrAz4Oraqt3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDE2MCBTYWx0ZWRfX3ZZUDulMSNqA
 2tXlTGn8qDpPTcE0LkAYhT3P09tuoqLGnB55csGC2BpeDskijyMyHp94DS3u+6UYjS5xRJ5mlMi
 X17zkqsoEmBvkx8ZN9Ltj8mf0+IkzFhgZ5NxyVtia/yOuFfWZEHjUG0DShEN5GfWWHwvcHx0AQB
 ksLy0GwR4+PyOvVCCyuLxSe0VBABqxwbHP9ysP6sjmdQVrRftbFGo/mabzWP2sSdw8JS3fFGmOJ
 NvK8Nsyy8N4p2B74OeFhQMxrgfP1G/xBusvY8ee+MLUhF9uOCUmEyE0ONVtDv2IG+nmMPMgJNph
 JeLG1/mV/+TTxYs46iDz5U0TaSmJq4KCv7ucqMwy/tcyI/W6wpJnlzs6CKBf6+Ck+P4qGMCLmI3
 mnzPtQXZ3yHzuCq/XP5WFoZD5m/tYAUjw9xHlIOvUqujN1ZiTaoRjzmSKF1dSxGojlODPNvr02i
 Ge4+qxWzSQrRU1w15CQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 spamscore=0 adultscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604220160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_093344_869956_92CC154D 
X-CRM114-Status: GOOD (  16.95  )
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

On Wed, Apr 22, 2026 at 12:42:56PM +0200, Konrad Dybcio wrote:
> On 4/22/26 8:01 AM, Yongxing Mou wrote:
> > SC7280 and SC8180X previously shared the same cfg because they did not use
> > swing/pre-emphasis tables. Add the corresponding tables for these
> > platforms. Since they have different PHY sub-versions, their eDP/DP mode
> > tables also differ, so move SC8180X to its own cfg instead of reusing the
> > SC7280 one.
> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > ---
> 
> 
> 
> > +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v2 = {
> > +	.swing_hbr_rbr = &edp_swing_hbr_rbr,
> 
> For eDP / low-Vdiff:
> 
> I believe the RBR swing settings for 8180 should
> instead be:
> 
> 0x07 0x0f 0x17 0x1f (matches)

0x07, 0x0f, 0x16, 0x1f

> (the rest differs)
> 0x0d 0x16 0x1e
> 0x11 0x1b
> 0x16
> 
> The preem RBR almost matches, one byte is off
> (arr[0][1] = 0x12 on poipu, 0x11 on kodiak)
> 
> The swing and preem settings for HBR3 look OK
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
