Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14D89C433B4
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 16:36:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A91456100C
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 16:36:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A91456100C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p7TFo5Zugx4VYHh14pRvqwx37CIq33ARLDG2FRdJ99k=; b=eM/eiJxLLo1mDzO2aiV+a+R5N
	vK8CxWZ1oWrfUozEZxxse9XSOJGqMqmjoSd4oJ2qdAlJ01qEyHOXXyjZuFAQnwobYatlWTTo35G5+
	eDDaF1GFprpzG4zbcXaE1XfGFuRlrccD8MKFvxt9d6ZCxdCVaahTjxgIwkU8XcdJLfK5UuixPUesB
	kerpRo72NCVo6iMvOcbcKvutAM7PX6elIUD7WC2K15pbsaUyS7UjTWAPw6dD8mUTz3dQlIaZ+gpkQ
	AkChjGyfJrcy3ugAlE0vxNYUqv+nlfZoJG2hnQ6v25W80h7tN0HFfs9kmVBM8+MzMt3/TLeAKyI8L
	ZEMr4wYFg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRdp6-0077CK-1Z; Wed, 31 Mar 2021 16:36:04 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRdp2-0077Bd-4E
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 16:36:01 +0000
Received: by mail-ed1-x535.google.com with SMTP id x21so23051819eds.4
 for <linux-phy@lists.infradead.org>; Wed, 31 Mar 2021 09:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6nHxMXGirVVZGY9b7vdftDmREv2drYnk0NA80veHIUk=;
 b=fzyv0B9SsRcyyStEnpS2VyZFOhN6WtLdtFCYHeVq7NgFtBnBZo7Pttl2NgpTME1Uxn
 vcxHLYgutCOJ4ocRWWNn38b0a/JLnzzX3iIoQ2D48i5+ej/+jdv49th2OVNs/UtAt22x
 NyOwRVmCGMbqYSsSufM8xFMcIqkWzHo5YCryOGAhFaZ3UDS74F/hws2Azuttd6nNCeUy
 ZfzYWnIJBp5hOe5Ob7HBxokG4tTQ9JJL0ZDLIqUwhjDiZSb+f3q8+apAF6Z8M8z54zG1
 c3Nt6Ovmv3ZpdutY5vC3H8kT4skA3W2t7laXgJQBRCvVvgMnWwM7w1Be5NJ50y8zVprW
 wIPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6nHxMXGirVVZGY9b7vdftDmREv2drYnk0NA80veHIUk=;
 b=MojAsJNPp0Z0n00xIKyzXo1DMJ4jbMzTnPZtlW4rfTvPireB6fcGgcqs7krkc6juiI
 C3cVCEA7obxBIQ3XvVlixi5DAXIwJmCtkpla/YkXFRO6KQcmTP71FyLXMABgQcjB4bEn
 U+XEY9HaI8VKtE9IzhxhMQjlwcfIal5UdIFbJtahrQX7q+G4DpmIyCSuJpRs0oIy73iK
 7TW5AJyCe6OHyCrKQrrsJ+bvw4yuGDREmIjcRWNl0HJhYYnQ7a39u5oD0VfLT9/807q7
 yTjQKJimNj35jM6z9SGrUXY04lruCGJGrAO7wPsAwqHnKaWcnzbdDH0qgNSYpSOItB28
 t/Eg==
X-Gm-Message-State: AOAM531kgj173B/tCyxAkssfG8/czXnBCTmrdE75cwO2w41WTwYc71tT
 lApsBCTxZF9aG4Y+YRHAUPE=
X-Google-Smtp-Source: ABdhPJxWO99NjgjIfS9Qm2dtjbPyQHhJKtxYAv/jtAbhyy9YzNmTkKK9yAtgXtqy2ZaT8LFxzbVMGA==
X-Received: by 2002:a05:6402:2cd:: with SMTP id
 b13mr4854792edx.55.1617208559411; 
 Wed, 31 Mar 2021 09:35:59 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id q16sm1527820ejd.15.2021.03.31.09.35.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 09:35:57 -0700 (PDT)
Date: Wed, 31 Mar 2021 18:36:24 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 05/13] phy: tegra: xusb: Add Tegra210 lane_iddq
 operation
Message-ID: <YGSlCKCcQ1rGLT/Y@orome.fritz.box>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-6-thierry.reding@gmail.com>
 <YGMz/IgGxBlBBqzM@vkoul-mobl.Dlink>
MIME-Version: 1.0
In-Reply-To: <YGMz/IgGxBlBBqzM@vkoul-mobl.Dlink>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_173600_340328_3F5763C3 
X-CRM114-Status: UNSURE (   9.63  )
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
Content-Type: multipart/mixed; boundary="===============7266624482226737963=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7266624482226737963==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1nkCcQX9So4jDDnZ"
Content-Disposition: inline


--1nkCcQX9So4jDDnZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 30, 2021 at 07:51:48PM +0530, Vinod Koul wrote:
> On 25-03-21, 17:40, Thierry Reding wrote:
>=20
> > +#define XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(x) (0x464 + (x) * 0x40)
> > +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_IDDQ BIT(0)
> > +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_IDDQ_OVRD BIT(1)
> > +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_SLEEP_MASK (0x3 << 4)
> > +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_SLEEP_VAL (0x3 << 4)
> > +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_PWR_OVRD BIT(24)
> > +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_IDDQ BIT(8)
> > +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_IDDQ_OVRD BIT(9)
> > +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_SLEEP_MASK (0x3 << 12)
> > +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_SLEEP_VAL (0x3 << 12)
>=20
> GENMASK() for these please
>=20
> With that fixed:
>=20
> Acked-By: Vinod Koul <vkoul@kernel.org>

Done, thanks!

Thierry

--1nkCcQX9So4jDDnZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBkpQgACgkQ3SOs138+
s6HOKw//R4CYL9ajdGjtcZbxQooMD3A3dzdxD9LNZf0pSQeGJAAJqYvBk30RWU2Y
VOizF3VaITILUOQrBaQz0g5JUwtF432X5a5Kc6hRCXyf+aJ4WHYnWlMXVYR/5J48
zntikhmi3Mw6G1uHPDOMR9doZbw03SsPObFKNoFZ8CKrf3nNVGB7zjewiDOt8HHF
ObHs3pxPxKQ6rBiultLKv9CEFpktoFUsgdmj82eRYPmEXbK4ZHYvXPzkS2ACCHX/
bKTGRZfWM41yFBAHDPz3ePqqBVqtXsZShHV+ID/gZbA2OgzCLFsMxupN9GCtzVxf
Q8z8VUG6RwWEXrjKTwn5JefzCK94cXZJsSzk+OnQXQi743xxT4yn1ydewOZ0zdWv
KLk0d0vVB2uRZlmHSIl8hDvy4tcnn33hlrqIvwkxIELsSp34vm74RRq23MnSmJ2A
SoftwtvJBJ0UkL+X8qOx2D0IUPjjgulgGsUbetGns0hM5ChmPZ85w/ml3TlaSwnn
yuHJjhPOsSxacHtN80QaKW9R/izdwyE+0Mzly9dKRI9oeq1yRjAqo40awp5jFgNJ
pEfS0kzlnFWvmpX9xxCAi6al8do6RHMx2ys/Oee/Np1qKvwzQXhBYH0bhyGEPdmt
ap/phUd7pA2VzW7rSwLxL+2e76Ojnc/YFLNdjL1Kt9sO6Uk0fuQ=
=sqQz
-----END PGP SIGNATURE-----

--1nkCcQX9So4jDDnZ--


--===============7266624482226737963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7266624482226737963==--

