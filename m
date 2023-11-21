Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B253C5ACB3
	for <linux-phy@archiver.kernel.org>; Tue, 21 Nov 2023 10:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fctXwD/07Yerfut4/A7l7w/fLfwVJ+rrdq+SIdKM3V4=; b=riOn7m92iQXKIt
	sJFTibSa9EOsCIuf6rI/TqhpOeHxmLXhSbY/lvGLkjPFsR8rkEl0Ds0tyMitjWIidM0Kg0nJJNBNZ
	YQUHoSu6ZeQ/EAh/S4FUbFu2Vumrbig39udS0KfQX/K3om3QzLrt6VA3OHd1JHtmwIXPCxo8eDvPc
	g+8jWfFPpt3KZ+Y6XQyFWBm1GwG6Q3+1LNNxbbqep2xEf4G8S+EB4euouiE45gwnxxFOGiwBR3Ogx
	Epdd2ZjHHV46FUcFVPoD00V12kiP2MkqtVSUzfNbVA4eeFdRCIdfcbo1MZDvHLgXqcAkVBVxmUN4L
	hzUSXD0iceEN6n+v0o+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5OGo-00GJ1J-2Z;
	Tue, 21 Nov 2023 10:46:18 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5OGl-00GIzd-2F
	for linux-phy@lists.infradead.org;
	Tue, 21 Nov 2023 10:46:16 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40b2ad4953cso1827835e9.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Nov 2023 02:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700563571; x=1701168371; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9YQ9oHc/Z7VmSRjGiVHn+TQLl6XB6fBGVSa6lAReK2Q=;
        b=iszFPwABL8F2XC2jpbZVEQ4306EIsTo8UWY40or9sV6AuuoVAmGYsSM5rMqmTeDB3x
         /7ObI39KjCesgp6sW1ZeUs55Kj8irU530aHsQzjkvGMHu03eG1kN9gRTsbNf6OeuBuPM
         05ZWP46jpS5UoYfUDpBTRmZUeavkI2C5WirMkK8jo3SPtj4uwj2oPAj2Krfg3hwRgpTy
         D8ePIx+dhsRpE0JV8f3IwKIX9q/remYNgezJfyIyLh6q5YX3DlBfgjJJ1FBw/zidnzsf
         0UYSTP87j9Eko+AQoGCrCqAjBWD0370re6JuXaSsM+0tTYut3lr879GNB35TvIq3Btep
         5Q+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700563571; x=1701168371;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9YQ9oHc/Z7VmSRjGiVHn+TQLl6XB6fBGVSa6lAReK2Q=;
        b=Sakn2d2iLxFxeuRNHQf6iYf/8VJ/YWLvILYE/U7rSF2oeHdDFZGx6Ker5dsm25Y1ut
         jRnQmGbAVivNvrg4ptiy8+V96JISMxmaQcRsA4NQOY7L10szC0aS+9ZpPf02ub5XTMGr
         q7OUhWcAUSQ/3Tbrkg/sTNCMGlrx72mHZJKHBahMXUQEHRji4pUu8EkZWgHX6lZx/a/i
         4iWmmwgg4I3D+VulGCh5L9qcRu/NeMbHbgZgdeDaYNY9B8lXtt67WWkiTzQWXbUXEqZ5
         CwGcMPDQUa/dgMFumxydBU2BIC38U99q0Z5Lv8TaaaRo5lMPMAh1QbWvG5bO7gk8aHVd
         MOkA==
X-Gm-Message-State: AOJu0Yw/h/C1E/j3pTwUuha/bn/a6mHYHylgMUBk9uJr1WYMqJEn6YrX
	UnP1+4OvTpr3G7oPnt4k8uRHzg==
X-Google-Smtp-Source: AGHT+IEeZ8W+Q8V/otGe4qIWbM9OBl6X7yXc7iTRxrT4SgTPAzPVtLB58IlgIl50TaKNv0wMDaLYNA==
X-Received: by 2002:a05:6000:18ae:b0:332:c789:4bed with SMTP id b14-20020a05600018ae00b00332c7894bedmr1937246wri.23.1700563571319;
        Tue, 21 Nov 2023 02:46:11 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id q15-20020adff94f000000b0033169676e83sm14261662wrr.13.2023.11.21.02.46.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Nov 2023 02:46:10 -0800 (PST)
Message-ID: <e67c00fd-37f2-4ede-983f-c8c46bf847f1@linaro.org>
Date: Tue, 21 Nov 2023 10:46:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/6] usb: typec: qcom-pmic-typec: switch to
 DRM_AUX_HPD_BRIDGE
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
 <20231103230414.1483428-7-dmitry.baryshkov@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231103230414.1483428-7-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_024615_764921_F47C8DB1 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
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

On 03/11/2023 23:03, Dmitry Baryshkov wrote:
> Use the freshly defined DRM_AUX_HPD_BRIDGE instead of open-coding the
> same functionality for the DRM bridge chain termination.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> +	bridge_dev = drm_dp_hpd_bridge_register(tcpm->dev, to_of_node(tcpm->tcpc.fwnode));
> +	if (IS_ERR(bridge_dev))
> +		return PTR_ERR(bridge_dev);
> +

What is the effect if we never attach any bridged devices ?

We make an aux device that just hangs around and eventually get cleaned 
up on release ? That's the way I read this code anyway.

Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
