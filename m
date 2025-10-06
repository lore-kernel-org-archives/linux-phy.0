Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A24F0CCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 14:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhOU4MZFNDi11GGyMVddKkhvK7snw9fzRJwVVc3vahI=; b=TClJjY3CRuruo9
	nqVWzsiBxj9//sPeU9SE4FfmheuJlbUg1UlESEqZbRcqSP5Uj1M92AlBRBVpTNSq9WkqHozxkWMxg
	h8Ve26qGPlRQM8VqY6muv1qG0ba1MvQzgzBwlwxGAhQJJPfYWO68ptjlPqmB/wf35aOxml6gDxX1B
	vDIR9Hdpb8dR+fz0bCD+nO/8WkHiL2Pd6iVcwMxoFp9xwSv5aVUsEomggWsaDCB+h5ya8Yx3C4hjL
	9m5+PhjKK93baObV59NS36V8cZjSco+1cOkOO68V0FqLLK1WpLX3UzOfqQtPgnMXGzft3V/vBAvHM
	Mdffx3QpILt8dE0150Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5mSA-00000000CeP-1kCJ;
	Mon, 06 Oct 2025 14:44:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5mS6-00000000Cdw-48jn
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 14:44:40 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595LegHQ001179
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 14:44:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	af46UksIWGum3ORUH4u56jYFag0zhbbImyMfhQfQfn0=; b=eh+3WwLhY2CHftTc
	aG2usgRhgy2Qc4ycS6zqMTZH1UII+aUxtnWcrR76qbOhuEXufH1+DXG7Rc0dX2XQ
	DetGR5mRT1BxgOsPrh5yDWwS0fJDb+lBIq6+swaSqVvcRBFIEKJiD+ehuvL2Qw4g
	iem0bCPJFYrWe2zTXVRb2FqoFH/9Lv1R1iE+N5WAd75beCxxnMRHuKyhstlunj+T
	fJTmIkZqt+mVe0aLMpI/EvmUO+7xSKkQsP6Zly38tlLqF1df04/3w3KcPtFrTEs0
	JO2KgGYx2Axlzrxuqqj8RxqYh4ItC3RwORPg9v2wxd0w8X81RKS8WXwGeDLC9Fcg
	4EuZCg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvv7kygm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 14:44:37 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-873eac0465eso19309856d6.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 07:44:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759761876; x=1760366676;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=af46UksIWGum3ORUH4u56jYFag0zhbbImyMfhQfQfn0=;
        b=C61btAWLQcLb0A2EfGngnadyv8kZ6m9lomnyi/1cRPYZINiCFucD6BcUdlxzVb9LJw
         F4FD3Nku8q00KZbpA9xbzubf82Ydjz8eK+MdCLiw1PGyPUefbTxe8147cmuny+jlqgME
         cGVc1soxPcSkv9hHbbFKzjCq6/bU5o+WQIhUA7e4Usl8kTOlzxwl3Zj44QmCsoGm3JCA
         WschZGQvdYtGkbA4raovoCLgOA0VUt/FLJj9EtF6aKuBaD6VIyh90x9Z21oWV7ygDYYT
         LAJRabqmsnwPYhyGta57v55AHB7YSCt5cPth94p0olMv06FATJm7AL49NCxosm7NAQzN
         ybwA==
X-Forwarded-Encrypted: i=1; AJvYcCUKw1PXtvgwyx5PbT62MT6+d3K7mhW/ggD1o7JUkA9TbIh+ssTLeac5Lk43Hx/7ZS7pna40Y/1EYaw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxkoD1ebuxsKrsiFg40jgnAlXwpAqVKcDPJn8O1M3bmPeeeGebM
	K6TDr4aDHtnGRh5KF0+To2qcc/avaqPBUiycqLY3g/fIQCs2FuPqfxRIqSj1Zlt9vue0TC4aMsj
	zuQKiRerCxLWAXQ8wUiV+ib42jvzozAsGevEzoJkqdO9zWRviO/Ts9lTuKhTUI1+GH6c5
X-Gm-Gg: ASbGnctdQGC+tIKnbD/WlZ8irIFbr/qMVX2tGAohCmP7NwILwudDu7uOzWjfKmylh9Y
	M2Ozjt1mgpj1xpBLlqJOemy1ieyqwPvm2gAdX1/1B5gEKXgp1FhnRQP0kMPc+ZUd8evqBoGejpx
	02DQ6EkzE1Jtl4oJgzweYYYCrOhLTFC5QoAz6P5jNHNT0zRA8igLkq2tnrfK6OUidlp8/E8pDBq
	0P+hN1sBo7XDEFDJhFZrUwmZSb1lWecRzlwibp0lDGrKAZuODqx27rxvs7h/EN1a/lVJor0WpU/
	1zFUd8ymMEDnOUV2OhpVSLpMyBFOa1fOUF+E1uN1POvEbYmKNR6Jh9DyPnLn4jL429WGJcmNeVv
	VbjfmvMJlgHjhOpdm8xMT+2AYBeM=
X-Received: by 2002:ac8:7f41:0:b0:4d7:6c8a:4792 with SMTP id d75a77b69052e-4e57695639emr106250621cf.0.1759761874495;
        Mon, 06 Oct 2025 07:44:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+aHHsdEeKXmX68xZhFRxeaNnJWO4fGCZPoBoUF9e7Uq2Xf/6cWij6SLqxtr+sHppcoZftXQ==
X-Received: by 2002:ac8:7f41:0:b0:4d7:6c8a:4792 with SMTP id d75a77b69052e-4e57695639emr106250271cf.0.1759761873728;
        Mon, 06 Oct 2025 07:44:33 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e7e8d8sm1169370166b.41.2025.10.06.07.44.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 07:44:32 -0700 (PDT)
Message-ID: <e6754738-76c9-4080-bbed-17f02e6535bf@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 16:44:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-combo: Move pipe_clk on/off to common
To: Val Packett <val@packett.cool>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250927093915.45124-2-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250927093915.45124-2-val@packett.cool>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNyBTYWx0ZWRfX1TOD/Zmbgvaf
 1t+GPjKrEVJU4b8xf+56exDhd3XnxlKZH/Rj0FG9/yKU90yhM/GuSeisKBILSujATTxEd0ANj/p
 XkQukMjfV8X3Xyu9yBJrriRsmN0v82k1d/GqVMxPrZf+whfixP69q16ErnwUx16b8eYZdVBDKR1
 pDS9zEm92FmgMrLmpvFs1EwLdwOCJw9Ekrx6LOyzrNzl/yXxHoYIANK/zXbY3ShlRg881yh33n/
 q/cGWty78yFR2MlJyqFZ8HMIXaUw4OikaZkVc+Stx7m9+LiJYZShyPuAUKwHXq73oL74ckiIkbl
 arWGsFaI/6ePBY9VXZwdQxPDmQh7WEGMyIHpwk56Ppxog8efRBGf8v43+h5/1lQNOx0yhKfna9t
 2nwUaeD8JH9XQ/ThOV3PjY5RSQzLkg==
X-Proofpoint-ORIG-GUID: pTFY7sL5PbDQhyeC-X_vJV-bVQ64ztkU
X-Authority-Analysis: v=2.4 cv=WIdyn3sR c=1 sm=1 tr=0 ts=68e3d5d5 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=N_By_h1aGXBmJSDtN4kA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: pTFY7sL5PbDQhyeC-X_vJV-bVQ64ztkU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_074439_036258_7C9BD49F 
X-CRM114-Status: GOOD (  38.21  )
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

On 9/27/25 11:17 AM, Val Packett wrote:
> Keep the USB pipe clock working when the phy is in DP-only mode, because
> the dwc controller still needs it for USB 2.0 over the same Type-C port.
> 
> Tested with the BenQ RD280UA monitor which has a downstream-facing port
> for data passthrough that's manually switchable between USB 2 and 3,
> corresponding to 4-lane and 2-lane DP respectively.
> 
> Note: the suspend/resume callbacks were already gating the enable/disable
> of this clock only on init_count and not usb_init_count!
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> o/
> 
> Just got my hands on a perfect test device for DP alt mode: a monitor with an
> on-demand toggle between 2 and 4 lanes. (Started digging because I thought
> I needed 4 lanes to use its full resolution and refresh rate, even though
> it turned out to be the dpu adjusted mode clock check rejecting the modes,
> patches for which are already posted.)
> 
> In [1] Konrad mentioned that "the hardware disagrees" with keeping the USB
> PLL always on. I'm not sure what exactly was meant by disagreement there,
> and I didn't find any specific code that touches that PLL in the driver,
> so I decided to just try it anyway.

So what I did was playing around with the RESET_OVRD settings, which
dictate what parts of the PHY (and their associated PLLs) are kept online..
but I totally forgot that there is a branch/gate clock in GCC that sits
inbetween!

> Before the changes, 4-lane mode would actually kill the USB 2.0 functionality
> on the port, no recovery until reboot.
> 
> With this patch, I can switch the monitor between 4-lane and 2-lane modes
> (with an unplug-replug cycle..) and the USB 2.0 devices attached through
> the monitor keep working! (I verified the number of lanes used via dp_debug).
> 
> I'm sure it might not be that simple but from my limited and uninformed
> understanding without any internal knowledge, the "sneaky workaround"
> might actually be the intended way to do things?

Normally the clock which you're enabling is sourced from the QMPPHY.
The other option (bar some debug outputs) is for it to be driven by
the 19.2 MHz always-on crystal (instead of $lots_of_mhz from the PHY).

For USB hosts without a USB3 phy connected to them, there's an option
to mux the controller's PIPE clock to be sourced from the UTMI clock
input. In those cases, the UTMI (and therefore PIPE) clock runs at..
well, 19.2 MHz!

(you can actually do that on USB3-phy-connected hosts too, at the cost
of.. USB3, probably)

So I'm not sure how much of that is well thought-out design and how
much is luck, but this ends up working for us anyway, with seemingly
no downsides.

At least that's my understanding of the situation.

> 
> Thanks,
> ~val
> 
> P.S. if I'm actually wrong and this is not acceptable for $reasons, the suspend
> and resume callbacks would need to be changed to match the logic of having the
> clk on depending on usb_init_count, not just the overall init_count.

The suspend logic is broken and unused anyway, but that's a nice catch,
the PIPE clock in question is even conveniently called "usb3_pipe" in DT

> 
> [1]: https://lore.kernel.org/all/f21b7d52-4c3f-4e5b-bee7-f8b2945b5b02@oss.qualcomm.com/
> 
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 7b5af30f1d02..c4bbd738eba1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -3035,6 +3035,13 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>  	if (ret)
>  		goto err_assert_reset;
>  
> +	/* In DP-only mode, the pipe clk is still required for USB2 */
> +	ret = clk_prepare_enable(qmp->pipe_clk);
> +	if (ret) {
> +		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
> +		return ret;
> +	}
> +
>  	qphy_setbits(com, QPHY_V3_DP_COM_POWER_DOWN_CTRL, SW_PWRDN);
>  
>  	/* override hardware control for reset of qmp phy */
> @@ -3103,6 +3110,7 @@ static int qmp_combo_com_exit(struct qmp_combo *qmp, bool force)
>  	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>  
>  	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
> +	clk_disable_unprepare(qmp->pipe_clk);

Let's disable this one first, to preserve existing behavior (and it
makes sense logically - if the PHY doesn't have its clocks, it can't
really generate one either)

Great job finding this!

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
