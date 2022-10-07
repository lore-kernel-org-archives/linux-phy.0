Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E814C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  7 Oct 2022 06:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2wBoNFUDZv6csIK/DBnHdQBygZNpg1j2FyOCasPSsU=; b=IaR/mnsd2cEfJm
	szQFcCUISJ5k5YMzAVPwgJ4ppJLgqNhWHx2m/iUOh3d3gv6+fNOx5KgsRRtIp+nZhjRjl4GWr3Nxn
	uWXRAH4OBQ0piHHjN+X3HNuGODqsF7HTz/2RIlpe81zKOPF/Rx25k8vl9Myuxzk8z5p5O0oONG614
	So+ZVczHdArqRScFQmbatxxm5F1KnT4I9ZlgbwGU2gxlkdvL8+tM0pxIhY/sBI7wyWsFP3jUIyb4i
	75AiQzFJhrHF+qWz1pvPOOyi6SJtiQqo3Wo0lFmN81rlR+9xuyQ2//Z8GPQBZus1e5ohuyop8rN0l
	tIWXsZjDcLvCnsOHcsLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogh8U-007hF7-Tr; Fri, 07 Oct 2022 06:47:06 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogh8S-007hCt-1u
	for linux-phy@lists.infradead.org; Fri, 07 Oct 2022 06:47:05 +0000
Received: by mail-ed1-x52b.google.com with SMTP id z97so5716809ede.8
        for <linux-phy@lists.infradead.org>; Thu, 06 Oct 2022 23:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6+Lu1a2GZvFhlAH8Wr/6nPLSa8zejWhrHmJvH/+vEds=;
        b=ofQYWTx3WtIku6/xfWUuT8SMfdW/9J7/ybhdMbJybyqBzf1/cdgyrvjAsn5QRwvyjs
         LVFaxQhRQW82nF5Ob9dAPuFFZ+zM/UKwnek+Etz5idzu3IvIHmX8PoGmR4cMWIA/AEyS
         M4nZBuFCxHD2JdO+ydt36jHkXohwWlH2v/AmQrpVdaDxQf3heYgL/qIovjlNWJX5uC7/
         miBw/fUk0ctPMOR3Sxcgee+pzVh3uC1oLbB6epDlt8FkyyOWCQsUWGRmq5S/+ZayG1pu
         NW82lxMPAzTnLSdrDwkTXgskJ1JupnbJ/K2kj0v9kRiu3dyrtVW/jXAMoC+IkUwwBesz
         520Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6+Lu1a2GZvFhlAH8Wr/6nPLSa8zejWhrHmJvH/+vEds=;
        b=KAU8PhAqLIRELTSwkQGMWeAxcoiuiu16mWnj9eYOUcoXIK0f1aleKaEwLHUOn4lxQp
         13m5HAbqkRhkJDXq8Ej397Yg0qTgZDcjBIOcgcsywLolTPqFW7Djqt/m8aTnx88Xt5Nd
         jQmY/OauQnjVPzkUB0WJGgtvmgk8Oy1Q9SSLyQQz6G+90j6qmv5x1+eQXRj5/xMHa6dq
         COzD1LCS5kscWxn7q6TCJJvYJs3vRRK+iuRG89HCJaSJZhkJKJr+44swuNWs46/43hvL
         +MNGIbxLWbby/aX7aLID5vrE30egLKycctB4o53PIND73dIKe15b9vAPxsoYYYsHgssL
         2SYQ==
X-Gm-Message-State: ACrzQf0vwBLPgxI5xHnM/BBg6Hlcb1+8uXmArTPIpum6RhcmqdYLRZur
	jiBKa0pjucR19LV7KNRil/0BGQFSdhV/0IymZGY=
X-Google-Smtp-Source: AMsMyM7rGC7/Cd/zF9SwuxRDXxZFtTxOMZ4Y9+N2m8frnFQAOSvzAIuWSRvKTWs7uM9H+LoPDY3pae+brMFLaRbSV3Q=
X-Received: by 2002:a05:6402:2989:b0:44e:90d0:b9ff with SMTP id
 eq9-20020a056402298900b0044e90d0b9ffmr3172425edb.110.1665125217771; Thu, 06
 Oct 2022 23:46:57 -0700 (PDT)
MIME-Version: 1.0
References: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com> <Yz/G0jQxc4c2gzhl@kroah.com>
In-Reply-To: <Yz/G0jQxc4c2gzhl@kroah.com>
From: Justin Chen <justinpopo6@gmail.com>
Date: Thu, 6 Oct 2022 23:46:45 -0700
Message-ID: <CAJx26kUTzBeNkV_=gEeUYaatBwugT1uFH_b_ggq-fXaJDRBMqQ@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Update maintainers for broadcom USB
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, 
	kishon@ti.com, linux-phy@lists.infradead.org, f.fainelli@gmail.com, 
	alcooperx@gmail.com, bcm-kernel-feedback-list@broadcom.com, 
	justin.chen@broadcom.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_234704_127688_F4B07F55 
X-CRM114-Status: GOOD (  11.60  )
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

On Thu, Oct 6, 2022 at 11:26 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Oct 06, 2022 at 04:21:09PM -0700, justinpopo6@gmail.com wrote:
> > From: Justin Chen <justinpopo6@gmail.com>
> >
> > Al Cooper is no longer the downstream maintainer for broadcom USB.
> > I will be taking his place as downstream and as an additional
> > upstream maintainer.
>
> What do you mean by "downstream" here?
>
Downstream as in internal to Broadcom. Apologies for the confusion.

Thanks,
Justin
> > Signed-off-by: Justin Chen <justinpopo6@gmail.com>
>
> I need Al's ack as well.
>
> thanks,
>
> greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
