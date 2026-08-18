Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78018C5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 10:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sr05WFjXF5qxZDj/I9vC52yCTQ8KRbC1Gr2iZ2SW1o=; b=RoEzfnEkF6cvm5
	nB0B6HdQi1q//D7K9aWizeJBHLAvKuj7qxnPi2ZD+XU8XfXgEclK91NCpGdHJCD6eHErurvFlfrrX
	6dfeNbwFo5GjQNj35uxjr/j9BAxYrqzAkJ70rpipycGOXAXdibZn4/G7wxelM19Wge9C+RHz62AxL
	WsOpV+Qxa3afG5+6G2CIzgaE2snh9BVyvW4ypUK6tjt81bD5AI5puMIERdISybaK9DY2BUixjjJIW
	I5nskjIblzBeZNRf1sccO5sxtxH6j4+o850nd0uxLUgz2Tlc48SUqZQ07/hEBTkuxiBrF9eFWykLB
	IRI49ibpeU5Ob/z5U+4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGlD-00000007hJ0-0mOX;
	Tue, 18 Aug 2026 10:09:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGlA-00000007hIf-1Xjq
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 10:09:33 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BMMn310077
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:09:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pviJHTasWouuNyvj3di1PtY92WvpKmSMA/f48Z2Jhd4=; b=Ah44Q4sY+ut0+g7j
	L5IIuCegXFLzcK5ou3twjYl96ERo1dOZCK45srKkBHwuKP7IM39cEVlrFqYZLbyH
	hcmoPnujZhbqp67nUr7qItlFyG1G+IiJFxfPv56TkvLU8Ph614WkzkadAn92OuJ0
	DXAoegVRCxZDFjkl13zQFYbG57YbxSmE5qj7IKas+UuuoddGvrfkKkdwB4DNM97z
	nM5wYPiuP+cN2w3ZCdCh3d98uQNBzw7xQwTdQ2lBSRBQOJ7CGARdn/7OiwRs9Y8K
	LS+jtn6NXcPBgB1lKTCpMOaYACnp2mzVvrjKz1034U9wwylw/pDjIDo03i+swxZY
	4ne8oA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4fba9mss-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:09:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92e5e21552dso31794185a.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 03:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787047771; x=1787652571; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pviJHTasWouuNyvj3di1PtY92WvpKmSMA/f48Z2Jhd4=;
        b=LvoAF8I9mHBcWrwfZCF5rnwqCSbmH9nmnFJin0IPxRg3Dz5DZoKfTd+PU7kSOnQ6Y3
         tfAsg5392VM+wCJm/yJUhFBblPq+EHdKdHG7uNYDZ+ZJ9UuRlubRi6ZcnNAgbzHcnxwB
         gBUwKTSf96bGFm6d1j6WbyaYEUQ3X3qjtxgGwZ+4Y6pwEwRUkw2DIM/hHgHe3mOfG7zi
         Cz5uPIngfsXXJ3CLn65V1ygzQt/AlPzsLU8T2D25UzWNIGV0ZqnxaKsSL00StZ4Lghif
         YO/w+SX6SyNsSXc5pHECB1qzUnqckxgDHwTaKtsgt/KtCWjMrPV3gKFWTNeLpwTfDfqz
         YGpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787047771; x=1787652571;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pviJHTasWouuNyvj3di1PtY92WvpKmSMA/f48Z2Jhd4=;
        b=BSKS7KM41cVKTqS5LN+zHetv6lLSjF6sY4LWLye6+ibQ/j6XFVkTXb/+98bmGWmqGF
         bu0fAXARhBuct0TtVRiM+lPJJwL+fvSu00N75xZyqOB+sW+1eG8A+zk/sIcapJ5ibLJd
         bkgYPI8F9w+1kh6hd5duF8OdD039LahVPtjRzdewMuBHyuMQmg2JOTngxG2puXwrKSAm
         XWQgmynd2A10Wg/viLrFl3Uosjm435fujlDOJ/gALFmLFfkj47bnoO1i6drPpn08DyTe
         zKJilcMRi8n/gwOEwhN+Us8c0nPCG3IT9E4YIGX4yS4R/uKaKSRgDbrckq9ZvEXyWUrF
         mM/Q==
X-Forwarded-Encrypted: i=1; AHgh+RqQe5WaFNSl6NH8gwidQMQrNkZeh2oezpbWGIjnAUrH/qbs9w+mjZyvmjC69yHTIMGy15DUV9RYUys=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSxvJ+dWcnQ+3X+TB/+rvg/FbDFQ4S9M8F0F4XZis+6des0lG6
	oX7wM9+CmQMpue3nDSjeLOlSrr9PdjgnwjbcUuh5pCSQnVsXN5hGg89uaQgVxrN8GH95itA8o3h
	2t/uApBtTfQjz3xvBLwT8wVcbl4ICyNGkyLd7cw+lggxmNhX2k+eGkvDEyEpJ0vqMmum9
X-Gm-Gg: AR+sD10kPg9ML102JM0rj6X3XKAuNc4J27u2C4BS4/7dg1otuWtryzX5BqKjfc2PW1D
	wnlMDG97nQsc+gR+3PogoDaQycEVtCWlwg8w0XF+93a0ZVHPEwYOIwAA9mbtRuMYuNuaoRieeSM
	H/m7bfKheCaKK9Xi/BYFl2Cu6Q0BRRf/ngSzGMVm2mf7lm3NjS7Z1zL0KF+s0FyrGGX64futAdY
	+ukQXkS4cwM+QIs2JvlGzdEjVJRMH9bXVIt/rps06fiei189V9CuASHQ4iCdgCv3Wmx1q94RMqm
	Q4XRkHh0dL543YNwTmrvQy2IKbYvqb1pdVNFwbaiotJFFtyYPQZQvH8Wu8CT0C/crJnDE8fdp+J
	puX7VGUK5R3yMhHJaEmo436sB
X-Received: by 2002:a05:620a:6008:b0:92e:6071:7cc4 with SMTP id af79cd13be357-936d23a402amr2194644985a.4.1787047770578;
        Tue, 18 Aug 2026 03:09:30 -0700 (PDT)
X-Received: by 2002:a05:620a:6008:b0:92e:6071:7cc4 with SMTP id af79cd13be357-936d23a402amr2194640285a.4.1787047770192;
        Tue, 18 Aug 2026 03:09:30 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a3d85886bcsm1736914a12.16.2026.08.18.03.09.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 03:09:28 -0700 (PDT)
Message-ID: <66f8e084-9bc2-412d-b617-70baf0f9f4cd@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 12:09:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] usb: chipidea: host: calibrate the PHY after
 starting the host
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
 <20260810-msm8974-usb-hsic-v1-8-e5f93ea76ffa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-8-e5f93ea76ffa@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA3MyBTYWx0ZWRfX2SZPU/JTCcwn
 Clks9dCrxAyquDqKbb+Y2Kk4SvJ1W6d2AwXHTngitJTN87aCjBD+1DoDk5BNJE6UGxAa3QRtiNw
 hK10j55W6lZXuvc/yxeWJUBOhygbwqI=
X-Authority-Analysis: v=2.4 cv=VsITxe2n c=1 sm=1 tr=0 ts=6a842f5b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=QSrdRFCPdf6-eOukQi8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: C0JuQFRpLhg0cIzcJD0avrEDU6NqQ5VI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA3MyBTYWx0ZWRfX3+kIyogtcF/d
 dV2yf6pIi5qv1JUjnDyPdEoC1zbA3lGrxzHwRn6Sfz9/yHaaz7a6mGyUhqkEYxxSBiNaOe+c9h+
 WzpkjYvdoKWJ5vf18D7pSG81sUJjb0Yp2F37CHkRxY2gXFCRWTd1Q8Czi0lgwNYdjL8OkF1mnbM
 DwHFIMj1IGG/o6/mz84s8uYq89c3h66jVb7BPtDQoDE9bWlwQ1ow09CtMBGHFFI7uqGkgURChdx
 C76dxdqEIPtkHUnMwJzupI4WcL7aSWx4bZv0mIZWk6/Sb92mrAk5+1a+bZzMIaVNsSgHKtfmZR2
 wo+mPPgIG6ZMiSg7yv2Nw2/f6x2tJrDY+5hN8jMT0LXea3ILNtv9OEqAcgZyz//47zxrDP8hIcW
 a4I1+h3+xQJia8dgPh8AWw7KR3apslMV/Vf8xYxEc0TWzIavToZEQdgcBG//7weBKeun78Xugee
 p7sYWBjl7roZt22CArg==
X-Proofpoint-GUID: C0JuQFRpLhg0cIzcJD0avrEDU6NqQ5VI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608180073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_030932_439438_394C826B 
X-CRM114-Status: GOOD (  19.77  )
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
> Some PHYs need a final programming step after the host controller is
> up: the Qualcomm HSIC PHY latches the device connect at the moment
> HSIC mode is engaged, so that write must happen with the root port
> already running, or an already-connected HSIC device (the strobe/data
> lines have no hotplug) is never seen. The generic PHY framework
> provides phy_calibrate() for exactly this kind of post-init fixup and
> dwc3 already calls it; the chipidea host does not, leaving no place
> for such PHY work.
> 
> Call phy_calibrate() once the HCD has been added, next to the existing
> i.MX HSIC active-event hook which serves the same purpose. PHYs
> without a calibrate op are unaffected.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

PHY APIs happily eat nullptrs fwiw

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

>  drivers/usb/chipidea/host.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/chipidea/host.c b/drivers/usb/chipidea/host.c
> index ced6076a8248..62bb2999edb6 100644
> --- a/drivers/usb/chipidea/host.c
> +++ b/drivers/usb/chipidea/host.c
> @@ -15,6 +15,7 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/string_choices.h>
>  #include <linux/pinctrl/consumer.h>
> +#include <linux/phy/phy.h>
>  
>  #include "../host/ehci.h"
>  
> @@ -192,6 +193,9 @@ static int host_start(struct ci_hdrc *ci)
>  			(ci->platdata->flags & CI_HDRC_IMX_IS_HSIC))
>  			ci->platdata->notify_event
>  				(ci, CI_HDRC_IMX_HSIC_ACTIVE_EVENT);
> +
> +		if (ci->phy)
> +			phy_calibrate(ci->phy);
>  	}
>  
>  	return ret;
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
