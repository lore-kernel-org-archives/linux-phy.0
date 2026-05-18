Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7669CD4F49
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 13:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKNVH53Mtwd+dbXVoG2fBedL52cJXEh0Ce/fIvr/6Bc=; b=Lpe9JLjynLXfQZ
	a1Q0zzVm42JdGsc7zvLXY7sv+ovym8k4vNCJT153GtA8T/hT66tSQskQWu10jbN2dw95HWZlRDU5v
	oxW6r7JUFGtvJWc7sTCw42p6QtiXvlG3ZO7QjGMFoV9f92jsiCKxnCu6KtJ5WS6zD0Td1KTYIGyug
	2GiwccyRYuR5We24rhTo76375+SQXNqBqGIqDJgzRsuq1hHvs+VXu2ZFCyJJKZODA6Y6jyT82OsL/
	c8OYUoGLWc4uVLOvMGJCDQCNTnL6lh/Phry3zHilRjW63DBrHD06yj2FMJIdjfcSDG+VV2QHdfPNJ
	LOkKzGEoaW6hKLM4iugA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOyTr-0000000Ftkz-2jjn;
	Mon, 18 May 2026 13:58:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOyTp-0000000Ftke-3Dwr
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 13:58:02 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64IAlirD2685229
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 13:58:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tLXYm7cmK5lZVfqyqbHK14WV
	psNYg+y7RQD2MbOLis0=; b=gBt/rLnOEPVJ29Bonn9jZD/MFBmF8jPA2RGRpnIY
	0eT2sa55wpiniX0ZWKOR0ltWCK66MMfGy2drT7ImMyjL1tu1+zYqOU9i/lOeUyCt
	qqyLtZYt6pxhxbP2W2ypKVHrweJyKNgEFiwBOIn6QVks32L0wyjCtiT33eNm1vTY
	zHSX6O1Rm0gLZCWk2k0NT7dRWxYM6cpnf8Np3pL3Z2v+tFn/U6rOA203B6Avpwb5
	pG5+wuaraUuvLn4tAegWM596kCJ8DCTv2V0qS1Mbbgc0xLfX5M6lDZEiLm3DRP7a
	iKvK3X3CZhE0fJG7dBs1aT0HmB+yWvvMMVtbLf2CNlxi0g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e7vrbt2s2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 13:58:00 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-515224a8aa0so29915221cf.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 06:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779112680; x=1779717480; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tLXYm7cmK5lZVfqyqbHK14WVpsNYg+y7RQD2MbOLis0=;
        b=J3aOK3JsgxFTlBU7PQsmDwaG7SvdMwpYHMQoHszn9ydtt1+pEKKB94mZdGHd7tSm/Y
         jz7fgrQWivfGzUN/tK99LVKuVHtOjYLxQry5+IwnSu7JtQK8wMIRVLC2G7RJ9TvzAmJS
         69hldU9r+/MYfSqnxkTTEmnn6S7SZyHfQTebIzWnfpJWl2UqEoXUzmpG6DYLs9xpBK4Q
         6aeUPCpf/OYfwioRxSE3Mj8ynA4qYqnkjS4BbLAhrUYxm7y4I5/blW8VZiKZguWebErQ
         AKRg6VaRYgmmh7oYJNcU09hSqhlnnn/EYuwpXgGz3oiiwLWrL1abGFzIHowN+9UpZdhj
         eC3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779112680; x=1779717480;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tLXYm7cmK5lZVfqyqbHK14WVpsNYg+y7RQD2MbOLis0=;
        b=GlqQnL7483y1UAwZJwxG96OP2EiZ9SEfgyZuNtqR9K9WjuAyBpk8UMfoiiLIitt2oH
         infGd7asghz6XLofaxZ1gB9r9MD90+urLTQg4RCIcupCwvixhmIEcmUn61iOC/hXWwaN
         CQ4/298xY0ufdMAKTuoX6JVReLw5AIMjHGyYBnrhgc0+e7bXVEHkGnvVlp1NzwiTDezj
         Ob3aeIwQEgiSI/IZvEcB8WyWPuxyUQHap0Pi72wzypUbVh9KI6ZKRVGGse8esDsG6Kaw
         wT9avNPJ6LLRaWytap/intdD+mw/MLXpjrbJAyyD97d9kWVhK7GuUFQ5SjqfuSf2N9l3
         DO3Q==
X-Forwarded-Encrypted: i=1; AFNElJ8o7vKOgLvmC2v/K5u0HWdyu9Hr5RzuvD90u8vT+T0u0hPn9eSkTeOBqy5Kvnh6+tNZFgmdSz415do=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTQS/K+N2LfDPAQtqtrh9lB1HX+v5YZPKK2O53EbpVnZScEXyh
	YP1UCuJAyHidgXzxw2im9vlejSexHo8P1fLtDbuGrLROD0eHRCeyE5VLNVvA4Hn94qi9XU+PZ3o
	HPJNJH4DofGIdCfya41RTtYxaROATpzE0BBilgNPOnR/++GBK7wvgwUk552psRInu/n7Q
X-Gm-Gg: Acq92OG/ELEuxOYp4d5Ppekhg4DKLwzMEPpFcp0f2mTNfhcv5XEOkr1eNSi6bhLt2iU
	UCSEoNCGANRBE5GqxW796tRoPFP9dp9W3LTrS05o3w/IC3Qyv6Sa8BlFaMBSdCQOP2maM+16RQb
	nelt+l3OjsCcntmrPekxCvQKQlfo/LZv8wRXGaY1VGTWWVXRRrbMbvIcalGy5TgJjpYE2WAm2m/
	UYd9pjUAPiiRQbiSiUcUMyG+S7AGQbmJF4pfSHRd4TTn6ZbQru62ZWD92/hn6gpBZaJDmoLpmMB
	WAmfq/9kH0Rd3dMLuEEXCyZS5cxToKst2kjleZ9Cinvj4aI0jpPRStMByR2fMUWZLXqimpA+Fpj
	BqZhjsUOeffbfkFlznoKnpyF2ai7SJ5vTBz3kMCPvJqVTB2S43fZG3wLb46FihGrsjJZLP8JOF3
	0fBVnEVxvzajPclNrK0fLHQHD2WeksUbIR808wFXsy/xnclg==
X-Received: by 2002:ac8:5c95:0:b0:50e:d330:f62d with SMTP id d75a77b69052e-5165a22aee1mr219637981cf.56.1779112679985;
        Mon, 18 May 2026 06:57:59 -0700 (PDT)
X-Received: by 2002:ac8:5c95:0:b0:50e:d330:f62d with SMTP id d75a77b69052e-5165a22aee1mr219637331cf.56.1779112679498;
        Mon, 18 May 2026 06:57:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a90f118991sm3341803e87.18.2026.05.18.06.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 06:57:58 -0700 (PDT)
Date: Mon, 18 May 2026 16:57:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
Message-ID: <4nqlpu7qfptekyn77sd7sdn446stgn3v3lw2356bvizrnvjgnr@czqgivemigt5>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-3-71d827c49dca@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260518-topic-usb4phy-v1-3-71d827c49dca@oss.qualcomm.com>
X-Proofpoint-GUID: ItSHb5fRnwcfq9XTk59cPF5ZYR_JpcBX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDEzNyBTYWx0ZWRfXxWTTe0x9NduF
 heTdNrh3ql/LUHB5Bm2ocHqt3KjF52XnXRN1yS55mAY/GW1JWy6oTOVB6c/UGvdu3/tSzPFqFhW
 uaTI5C93eZ8uug6rqRooV517zcs7g/SlzgmjLBbdSskNk658gW6O9miT27NvvzCCLC4GMzoBrkl
 rw2Vv3MZjxReh9Z8zlJKKhgMGPXyQ6wND9XGYoKauxptqfrQg7+GtJ1WQcHosI+6u07jXw7OzL8
 fWbTv3efqwrPEyoVpuoEgSpk4QKFPk6RCcWJZqHRZJ03zQwZdLJjUht7jWyu6NGrV4PUJk1h1FA
 7LxCpEqiFu9mm+RD4UTNJ1/pRVpEhLskO4gELAHSOk+ONQl3oW11D3o/++96jlX0M85vWCs0DMr
 2jM9731zHEIjjfd8dglZb0WCeJfsgiA9iH6qcA9lQWrNN4Sl/ZiQ7BRqgf9q/f3RvMU3DPBTvi0
 003aIaoOisbcxT7jw6Q==
X-Authority-Analysis: v=2.4 cv=KZ3idwYD c=1 sm=1 tr=0 ts=6a0b1ae8 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=4-prPhlKnIwNWIxOTkcA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: ItSHb5fRnwcfq9XTk59cPF5ZYR_JpcBX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605180137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_065801_811567_6376D958 
X-CRM114-Status: GOOD (  20.70  )
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

On Mon, May 18, 2026 at 12:29:50PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
> a flavor called USB43DP, which as the name implies, features USB4, USB3
> and DP signal processing capabilities. In that architecture, USB3 and
> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
> The DP part is roughly the same as on the instances without USB4.
> 
> The USB4 and USB3/DP operation modes of the PHY are mutually exclusive.
> Only one USB protocol (and flavor of pipe clock) can be active at a
> given moment (not to be confused with USB3 not being able to be
> tunneled as USB4 packets - that of course remains possible).
> The DP PLL is still used for clocking tunneled DP links. It may be
> turned off to save power when no tunnels are active, but that's left as
> a TODO item for now.
> 
> Due to the nature of USB4, the Type-C handling happens entirely inside
> the Host Router, and as such the QMPPHY's mux_set() function is
> nullified for the period when USB4 PHY remains active. This is strictly
> necessary, as the Host Router driver is going to excercise manual
> control over the USB4 PHY's power state, which is needed by the suspend
> and resume flows. Failure to control that synchronously with other
> parts of the code results in a SoC crash by unlocked access.
> 
> Because of that, a new struct phy is spawned to expose the USB4 mode,
> along with a .set_mode callback to allow toggling between USB4 and TBT3
> submodes.
> 
> Thunderbolt 3, having a number of differences vs USB4, requires a
> couple specific overrides, pertaining to electrical characteristics,
> which are easily accommodated for.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 392 ++++++++++++++++++++++++------
>  1 file changed, 322 insertions(+), 70 deletions(-)
> 

Overall it looks good. The major question (after looking at TODOs), do
we need a separate submode for USB+DP / TBT+DP?


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
