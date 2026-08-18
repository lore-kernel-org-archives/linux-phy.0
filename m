Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75ADDC5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 10:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2bjvsjTYJeB23jTgdG21nYWTJNUZlV53KNOTm7h/iA=; b=sN8eX6e/AQDC8f
	LeilVenwQvRzIITPAQxYEkqua33/eFnwerSyzT3biX0Ncz0BE9Ynf8fqasgoxybzt0207HopIH6cz
	G9zjauro17QsD0jkm5CYybZFoACKbII9aE5o5N/EbnVNK6jEAkFFQYYWU+JZG+QIQqrpgkuyMeXXV
	LltIgCd0XyKGP86yka9WG/VXbbXVCvWkzTwUOx0hSxpG8jbplttGAQsWw75zhmgb3eIqnYzBwkLKI
	pfaKlkiCh89d6oZ33TO6+FV+ret/3lHpQxzMYEsgH4BbwAkP02a0khCr4tNB1Wl32fv/cYyMhU+O2
	b3mETaHAxtAjtB2BXDVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGkP-00000007hF8-03q9;
	Tue, 18 Aug 2026 10:08:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGkM-00000007hEX-10ny
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 10:08:43 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67IA4xkj904732
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:08:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4zX7BztKtXi11cLzAfcZ9hIjR8IT6XfTvfH3alw4a2I=; b=Wo14ffHrSEJu6/9W
	Zt5LCGEjhuvvj+5polNFsavEnvRSWdMip7Qgfu7oPhRJVNEgx92eXusAEVpv2Vm7
	aXe0MADRBEQ4SpibpuvomQ8WlbTiiAsfcVcniw5oSH2XmsZyG9C8KaIZyjlfiY2y
	mbzrsyKT3RJbnuFm0JAnIUWLApZ2oUUA1jxt5nAmgzAsBZUi4IIP9H66QDvbboGo
	fagV7YwE0kc5/spJO4FDYgC2ce610cLxJUAddqM6lbiG9/h9G3r1cUbKCnlZKXAM
	UVG2uO/DnQYF6FdxHCyqhumd7INOT9Jks5LX5+ROyZIZzp0jVCD1e7RLmSdmCQQM
	Ut9bNg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4nb180gc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:08:40 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-930bd2bfc45so122395485a.1
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 03:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787047720; x=1787652520; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4zX7BztKtXi11cLzAfcZ9hIjR8IT6XfTvfH3alw4a2I=;
        b=c32yMhUwEOWVMfG9Hn2+g94Qe1onYIZ1wgvaVn9UZmlwcUniYyogZPiN/swTy6D0nw
         P0w0fIyIZY2TW83mVVDQeB/PKp2zI3OPOfZ3bsYPN7/s+dKExTCJMH5Asyq/3QHDIpE2
         VWoXD8RcEXp5SXN+tLfL/484SAIynggIhzBaTeYaKpNxhM16bvUKfy7kqvOrq6zBimgi
         uT2XjgDBQwonK8Brg8xvjQQplfuhI2S6ux8mZFakQTICcYtS39HWPF1W18auVxPaYzZF
         GqQaizTvMxPFyhC2qnYbtN6QmzTifKz+dSD55AGprifZOAJLQWyd5KD3jY/XVwDaXBrL
         grYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787047720; x=1787652520;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4zX7BztKtXi11cLzAfcZ9hIjR8IT6XfTvfH3alw4a2I=;
        b=Xufwi7McbWtaMERWPhnf11jd+Bm8zwoH+58cYsitlLuf5ECWcQkAi8eO3yZSblzXeW
         9uVrvkseDJMeSH1i7Ko3LA1uJ4ha2FCwGe7C5oL1pJOUeDAPLeivpzbWdIxmpBkSoHb0
         0Hkij8tYcu+6kVG881gXfZSNGZFwPsyVJdgTYo6iZh3z4SzNkCF8t5ySJISLmeZoysjY
         H4fEorcKmldTNTbFv+BO0Hd/bGWvnnh/IvNh0wPh49wSu8V8A5gFKCzThaTd4IUzfOCm
         rG7sGphluuzzs4CSNCNIz4UmJXSd8K6yEM+knffA0CZfr1aXcATpGcObTSy2DpFVh+cJ
         Nw8w==
X-Forwarded-Encrypted: i=1; AHgh+RrZGtj3OW47KSA7aPzIlB6Xwxy5LNA05r98aTCBW2iqjc9X/81EQ8Xw/fSHO1DsMmlwJPz8Ff68b5Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTNzKKcFoATfdZWF+rC/Ds8fU2FZPC9jgBaa7hru36x/V7M0Qo
	PEqlOd14FKSteJjN0yjHIBEglF+GvbJy4beo5LTA2MdvWYHioIljLlWB9SJgqHEvVzUEdtsvGOB
	xRPWrJybKU+FyoLTY8f+4mt0Ae6x5T3KWvQVyaIN05BefgRc4wYa9ssFKUH8ObwEcF49U
X-Gm-Gg: AR+sD11KliXImNSt3R2Md074JvzghaNv4Zy5E1xzF7jHToLdOdXzd/+6s+vBFpr6j3Q
	N6gCLrj85+grSwAaNimZgatMf4TORhS9/TaRtvbK1vMciW9vCxfhaA+vlmNFnvVybFp4US68dWD
	x4YLxtpLNJgRr31td4NKJn7ulSwc7wQRR62MgpUnjlhbuIgBzFf4cV9h8+Wqls23D+uB2+Ej+gK
	Zs9zwsN9S3W4c6D1UcDFboMqq1Jex6D6Exf1XrH8U+r1seYAN0Gg8Fel5Y5oSA4vXxTUINH5zA2
	G/ibyo7MZXhfkxwDLfkiFI7TF1HzG6api42BSPY8Fz3oVLtD91hiqLCwRBxbtxkkCM+FMMOugiB
	sVPnOksV629kseq1lOqhMtBto
X-Received: by 2002:a05:620a:6846:b0:92e:5272:4e3e with SMTP id af79cd13be357-936d1f0a69cmr2252170185a.0.1787047719991;
        Tue, 18 Aug 2026 03:08:39 -0700 (PDT)
X-Received: by 2002:a05:620a:6846:b0:92e:5272:4e3e with SMTP id af79cd13be357-936d1f0a69cmr2252164385a.0.1787047719529;
        Tue, 18 Aug 2026 03:08:39 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2185bc60a2sm126710566b.56.2026.08.18.03.08.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 03:08:38 -0700 (PDT)
Message-ID: <070e30fb-a9c5-4685-8185-a5f19ed13693@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 12:08:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] usb: chipidea: msm: do not force the TX FIFO idle
 on HSIC instances
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang
 <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-7-e5f93ea76ffa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-7-e5f93ea76ffa@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA3MyBTYWx0ZWRfX2raDWMlsgBUq
 xBRCg5rqnyaBAy8mGaf8Rrk87oiCteVN15xwtHJ89Qm/0sFo7cwc/fo6E95xhoMcadJqSqhYMbg
 R6YJ3otA1X+Pj2fvIxH130RsusTVr+hCsdN9aQkMU3tSvoAdbXL12EfAcUmOp3Bsot7JOkVnKAT
 E9wj+V0kDyx41JzPqfC9sI2Z9tBuwTOaVnSbABk3gb48GRJZ1PLV7XOuG4u3iP6r+D6x+mjCcET
 sMfgBuHLmQ4xlewM5JwJITlixUYNn3txQ2pbPM/FFBQq3C9tC7Sl8zQ4MwE0Ik7sEokdIMj74gR
 MX0BQTmz7rzBQssHoGHIWR9kxRHeXGNT9a6r905ZmjIropJFD8PtNI9ypBKAykz+/Avt0T0HapS
 QLqRGENvTiQ1GsRQWOyI8r57XBSXCkqK2Qh2MurfGYC3grejQ80Cd7trJSP6CMRLk+sPHYP7AZQ
 ozqdy2u+sIzZxTkEJ9Q==
X-Proofpoint-GUID: dLo-5SEPSEqaWBx0eAfvLRonL1w5T_TF
X-Authority-Analysis: v=2.4 cv=Ze4t8MVA c=1 sm=1 tr=0 ts=6a842f28 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=rJk912bZzWDh8y19x2MA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: dLo-5SEPSEqaWBx0eAfvLRonL1w5T_TF
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA3MyBTYWx0ZWRfX4OBjd1WqFetI
 iIMM2VjB+cBgXHFfCDbTcOlDjjts/o2wfxfXFVkuiZk6WTeYfcNRmvr8zb5J3XCVQ7B+pdyCJEc
 mu727YzgkuWv4qEIzMi2r7NNhpqhcHY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 adultscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_030842_401245_A2F0226E 
X-CRM114-Status: GOOD (  19.67  )
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

On 8/10/26 5:42 PM, Dmitry Baryshkov wrote:
> The controller reset handler unconditionally clears
> GENCONFIG[TXFIFO_IDLE_FORCE_DIS] as a workaround for an RX buffer
> collision issue. The vendor HSIC host driver never applies this
> workaround on the HSIC instances and leaves the bit at its power-on
> default (set), so clearing it makes the HSIC instance diverge from the
> known-working configuration.
> 
> Skip the workaround for HSIC instances, like the neighbouring
> GENCONFIG_2 write already does.
> 
> Fixes: 47654a162081 ("usb: chipidea: msm: Restore wrapper settings after reset")
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/usb/chipidea/ci_hdrc_msm.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/chipidea/ci_hdrc_msm.c b/drivers/usb/chipidea/ci_hdrc_msm.c
> index 9a9410a814e5..69be194f8e27 100644
> --- a/drivers/usb/chipidea/ci_hdrc_msm.c
> +++ b/drivers/usb/chipidea/ci_hdrc_msm.c
> @@ -108,8 +108,9 @@ static int ci_hdrc_msm_notify_event(struct ci_hdrc *ci, unsigned event)
>  		hw_write_id_reg(ci, HS_PHY_AHB_MODE, 0xffffffff, 0x8);
>  
>  		/* workaround for rx buffer collision issue */
> -		hw_write_id_reg(ci, HS_PHY_GENCONFIG,
> -				HS_PHY_TXFIFO_IDLE_FORCE_DIS, 0);
> +		if (!msm_ci->hsic)
> +			hw_write_id_reg(ci, HS_PHY_GENCONFIG,
> +					HS_PHY_TXFIFO_IDLE_FORCE_DIS, 0);

This patch seems not to match downstream, msm-3.10 sets it in both
hsic and non-hsic drivers

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
