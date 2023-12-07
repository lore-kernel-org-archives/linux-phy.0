Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08842C4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 08:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PX2zSokLhgcakdG0cWhQQmS8ASN6nbHDjstPWuujYao=; b=uGOWiB1MfUbvIC872Lqt07SD4a
	SDcpU8xvNaazI8cLiZF2xuETGazriIA9I76du0089nCnv+FG00PFji6wMuNbwuOQ4fG71QcE+ndzo
	kx0DpoOXwpbPW/gnSQA1vFZ+ZXldUyjftirHc5ZBypR/IdiYuRYiBqaGTlt5cmbeUVIIv5TOd5OSh
	jPbZlzQ015roytxkkHcLz2pA9Bqvhuk6Z4pXBi+4VDPLfyxX+IEII9ZsZEuLf2qTerho6PMDOj4ZC
	QcP7EZlIZDT/qIMJ5hh040+UnxuVnN1djqSIaEoReVhS2DlGyi2z2NJvHI5gtNf8pwWUzFsHHWzok
	oynQ4egw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBA9Y-00CHGG-2P;
	Thu, 07 Dec 2023 08:54:40 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBA9V-00CHFM-0q
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 08:54:39 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50bf32c0140so464225e87.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 00:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701939273; x=1702544073; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3EiRs0yKlJ/67lCpuOUoZgH8XdcgjhbQ1+ghMbk1xR8=;
        b=fWreZr0f3TqVRBUJjj39b+mPUKEOiypy3CE0fOJCLoslz5fw7k5GcWJkihAucS97WE
         PToEYrHWeTqkiaBaa9vazQgMrFYH8OWba/lJm4LjVLLVWVVxZ0ji7Z913thxNUSh/ivC
         VgpYdw15TujJFaZUZw9LVDI/rIUR14mKuHo1cG1nLH1Yv0cPkYuSdLHqdmnQkBJjc2Rb
         NxMO03GmpUdFrbmfWM1xoFgGEAofDskILVnJYd9t0dScg38PMBHix8YljoS7KWBNYiZi
         JWINGsPyrX0f2kRzoBeodByhP6Jo83HgBY/m8p7n2iMu2ZN7l6AuGhVqLg0cU0IrEJjv
         RZNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701939273; x=1702544073;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3EiRs0yKlJ/67lCpuOUoZgH8XdcgjhbQ1+ghMbk1xR8=;
        b=GEbUp7y32RCRj0aF+t5YEiZz74wKPiJnN/FZI+xsSeOodb9jLP9CWDV6IzBwbGuqYi
         RD0ayzSUPpTQYWnrfE27ahBOIoRbr9vFt2Kd41rcYpTfWof1Uz9NrW/wjV85S73XH4SM
         NeY1rKezQizn+pTt73R2SbbNUw1fHXen2yZX/DFG2RoZrpIdfPXHDpH7v7FhpBWeoPK+
         DyGqIz/trk6SdbRi4r0c0CRTyjA5CEeXNlFaQZU5lTqZpicxYI7qLhG3turQCNq86UFC
         BNe7TSHg3yWHMhq6kluWai06f5aS9unadAS9eDdSvAozaBfl2afhWpgJHuP6l32+R3lX
         pMMA==
X-Gm-Message-State: AOJu0Yy5YJhOCVBcFBy6DJFFulwbC7W8PQyQKZQigKq7m0hP4xdnaS6F
	QpmYLgvVYiATG/2LyRXommU=
X-Google-Smtp-Source: AGHT+IH0MaeQfjMj8y6bVmqtFg2EdC9Pw0xMj6zb8zbGu18Y4G0tn+n8W7nlDcSFx+86bbIJbuPifg==
X-Received: by 2002:ac2:5147:0:b0:50b:f51a:2997 with SMTP id q7-20020ac25147000000b0050bf51a2997mr1060183lfd.83.1701939272656;
        Thu, 07 Dec 2023 00:54:32 -0800 (PST)
Received: from [192.168.1.104] ([31.173.85.22])
        by smtp.gmail.com with ESMTPSA id h13-20020a0565123c8d00b0050befdfd3cfsm112164lfv.215.2023.12.07.00.54.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 00:54:32 -0800 (PST)
Subject: Re: [PATCH v3 RESEND 1/4] phy: core: add notify_connect and
 notify_disconnect callback
To: Stanley Chang <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Jinjie Ruan <ruanjinjie@huawei.com>, Rob Herring <robh@kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Flavio Suligoi <f.suligoi@asem.it>,
 =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
References: <20231207074022.14116-1-stanley_chang@realtek.com>
From: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Message-ID: <c0af54de-2664-4c20-2d01-7fc64c98b238@gmail.com>
Date: Thu, 7 Dec 2023 11:54:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20231207074022.14116-1-stanley_chang@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_005437_316776_75EB53E4 
X-CRM114-Status: GOOD (  16.38  )
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

On 12/7/23 10:38 AM, Stanley Chang wrote:

> In Realtek SoC, the parameter of usb phy is designed to can dynamic
> tuning base on port status. Therefore, add a notify callback of phy

   To be able to do dynamic tuning based in the port status, maybe?

> driver when usb connection/disconnection change.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
[...]
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 96a0b1e111f3..a84ad4896b7f 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -489,6 +489,53 @@ int phy_calibrate(struct phy *phy)
>  }
>  EXPORT_SYMBOL_GPL(phy_calibrate);
>  
> +/**
> + * phy_notify_connect() - phy connect notify

   Notification?

> + * @phy: the phy returned by phy_get()
> + * @port: the port index for connect
> + *
> + * If phy need the get connection status, the callback can be used.

   If the PHY needs to get the connection status, maybe?

> + * Returns: %0 if successful, a negative error code otherwise
> + */
> +int phy_notify_connect(struct phy *phy, int port)
> +{
> +	int ret;
> +
> +	if (!phy || !phy->ops->connect)
> +		return 0;
> +
> +	mutex_lock(&phy->mutex);
> +	ret = phy->ops->connect(phy, port);
> +	mutex_unlock(&phy->mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_notify_connect);
> +
> +/**
> + * phy_notify_disconnect() - phy disconnect notify

   Notification?

> + * @phy: the phy returned by phy_get()
> + * @port: the port index for disconnect
> + *
> + * If phy need the get disconnection status, the callback can be used.

   If the PHY needs to get the connection status, maybe?

[...]
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index f6d607ef0e80..cf98cb29ddaa 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
[...]

MBR, Sergey

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
