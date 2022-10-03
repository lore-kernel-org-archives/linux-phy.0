Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7262AC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  3 Oct 2022 15:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4rps6omBc/MQaQgMY0+XXB8Uv2n+2POMc450B8oJ2xw=; b=AwcN0egFxaSJJ84wKRhWpss+Jh
	4lhHAyUZL8qxm/IEZcUi2Jp05NpbfVSheZJOmlHIMi5ta+gPuV0mN0caWlcqWIe2kMX7RmL4lt3CU
	eIgEZmIs2Y2mntP+1kAxqwr3Z+GWIbPiI+9Y7/cW/Yf+uAw6UX5xsGmUwOx85EYSJaULX6MC56RqC
	FugkIPVF9oezccuSd/hR0MAHuUOxpS2xD5YEa/1YuAE8sHJmmTrLfwvbJ9a2ULULNU4rWcY9oCqC7
	J6WhWMhshfzvYP8Kd6aMF9SlhmeVYDbSq19PfJPbeN8d8oVK0/wDnHrGLzjUD1diK/gDtaNIw8rRK
	53r0OcRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofNY0-006WI0-Pw; Mon, 03 Oct 2022 15:40:00 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofNXW-006VzR-7q
	for linux-phy@lists.infradead.org; Mon, 03 Oct 2022 15:39:32 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 8-20020a17090a0b8800b00205d8564b11so10256193pjr.5
        for <linux-phy@lists.infradead.org>; Mon, 03 Oct 2022 08:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=sBjMELHhs7ootP+M1ePzkemYasHrxvoQKWyxZ5SKdJc=;
        b=6TeHRYpKr4iA6ltAvmCjUEoPS1XHVEd06IoCPr9cBmfj4KcCCpxO4crfMKOV3j+ttD
         nSeOZOMohexUm4wDctC02d16DMakiBRtjI4eW7FpPc2+VsURaV8CZmi/Rv50Ju0O6bDZ
         mdJ6TzLmnXN/GWGyzbrtYytsMwPzUJ4T13JD1nY6dCnb/sWc4wLvd3XZoRV5ZBtrJSXZ
         NYuEIairpytFb3UeLbZhZryD3bGVjUZEKacG8YLZDJT1Z/e2blxmqYGhx6Od824QDPR1
         oAdtoO8RRJNF37qDOUwsRz2nYEHUq2YFqJ+davPWQhI4GkSOm08p1XzZO+oufH7CzHlN
         JmWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=sBjMELHhs7ootP+M1ePzkemYasHrxvoQKWyxZ5SKdJc=;
        b=5EOPfSfNvmCXCzals0P+LNf+xPIuguQU7F7AnBayy2SLchJ3Zf0SUsuvQUu1sTOewA
         HXq3D2LnEqticbREd+d7mFCVQ4vLvs4wWdcHuy3ui9WZWK6tq8plgUWa2xhj488lIXPt
         h9M8AxL/i/fR4YwjfRT/bPrzZ3AWTrSoe4LSTTL/TrX6oOKO92VkKWwrReZReqsKRgsc
         3V5I51UpW88vZTnByfki/Io2O+/hY783oebe7BPsQKzapEk/tn57xQsXkunw1P0OgQ+E
         VO4PDIAjBfmsWgxmkkruC8+qqhtOoIspb9XTXRHnycycA7unoy9pQnYiacvpTUdc+na3
         BurQ==
X-Gm-Message-State: ACrzQf2y4Cawlf33kV1ydvjkZZhmuqghVM4cn5koJZA0A2vzQgJFaFbV
	1nl8WLp8ySk9rTBbq6EF0iGxNB8wMdIZNMp+nFj8oQ==
X-Google-Smtp-Source: AMsMyM67n5/JfkI+ezU4sEpOAQkHL4Lr8SNXTP6tBMjqPf4oPEqHcs7Y4we6Zo0o6qrkQaDBeTf58h4qBuFfOWQ+eNE=
X-Received: by 2002:a17:90b:2643:b0:205:bd0d:bdff with SMTP id
 pa3-20020a17090b264300b00205bd0dbdffmr12433645pjb.99.1664811565787; Mon, 03
 Oct 2022 08:39:25 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 3 Oct 2022 17:39:25 +0200
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-9-4844816c9808@baylibre.com>
 <5920ba96-886c-1195-656a-a98d7b1f6623@collabora.com>
In-Reply-To: <5920ba96-886c-1195-656a-a98d7b1f6623@collabora.com>
MIME-Version: 1.0
Date: Mon, 3 Oct 2022 17:39:25 +0200
Message-ID: <CABnWg9vdYYgxPxMY=qm=JSd4ZV4hHB7g8M4he3GzUj6-rzmfQw@mail.gmail.com>
Subject: Re: [PATCH v1 09/17] drm/mediatek: hdmi: add connector flag
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221003_083930_289185_ED751BF4 
X-CRM114-Status: GOOD (  11.02  )
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

On Tue, 20 Sep 2022 12:38, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 19/09/22 18:56, Guillaume Ranquet ha scritto:
>> Add a flag to indicate support for an external connector
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>> index 86653ebaacfd..30407603d693 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>> @@ -199,20 +199,22 @@ int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi, struct platform_device *pdev,
>>   		goto put_device;
>>   	}
>>
>> -	remote = of_graph_get_remote_node(np, 1, 0);
>> -	if (!remote) {
>> -		ret = -EINVAL;
>> -		goto put_device;
>> -	}
>> -
>> -	if (!of_device_is_compatible(remote, "hdmi-connector")) {
>> -		hdmi->next_bridge = of_drm_find_bridge(remote);
>> -		if (!hdmi->next_bridge) {
>> -			dev_err(dev, "Waiting for external bridge\n");
>> -			of_node_put(remote);
>> -			ret = -EPROBE_DEFER;
>> +	if (hdmi->conf->has_connector) {
>
>If MT8195's DPI uses the internal HDMI->DP converter, I say that the external
>DP has HDMI input and DP output.
>Logically, you can't have a HDMI port that's connected to nothing.
>
>Please, rethink this change.
>
>Regards,
>Angelo

Hi Angelo,
Sorry for the late answer.

I have reworked this for V2, to use an hdmi connector device node to "bind"
both the hdmi and hdmi-ddc driver together as with "legacy" code.
So this patch is dropped in V2 (hopefully ready soon).

Just to make things clear, the hardware path on mt8195 is:
DPI1 -> HDMI Tx -> HDMI Phy
DP Intf1 -> DP Tx -> USB Type C Mux -> DP over USB-C

So there's no HDMI->DP converter involved.

Thx,
Guillaume.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
