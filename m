Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0508BF4613F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 22:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=idPn77BnPbaxkeqv7Kaz6RifeAtZHHqy0clUDVwk4so=; b=fDhBlsfwQ9t8+C
	Z62OSytJeWSaIJEWwWgj43f1Dgxsxv3VaKHTmXPwGUYJtjPgeOcLzv0d6lh9f/juUFwXOiISNrV62
	IJHZkHRnbW7qPZxubaODV5YZApLwSsCgtA0N44RC1rF/Qj/d6HQ79zhSb7qwYuoafeYIkVuGJbtwv
	Vjq+XsHtSsMlVwMHg7xd1OqekJomgEL2vMqr1HWLQDQlmAOtEHU1/Bom6UBQ33oDlNNO2394apc+d
	6OmngimzEtBBM3Lpi1GvNlb39KbmKU797USsICp57U3QcPrqNul8seUR4z/OdQVpDLNLwN7G67j/w
	bfqCjGMhiHZKy71gJDPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4o4o-0000000065F-3Dn9;
	Mon, 23 Mar 2026 22:48:50 +0000
Received: from mail-dy1-x132c.google.com ([2607:f8b0:4864:20::132c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4o4l-0000000064v-2iDf
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 22:48:48 +0000
Received: by mail-dy1-x132c.google.com with SMTP id 5a478bee46e88-2c0ecaae7dfso7782609eec.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 15:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774306127; x=1774910927; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FGbAPMtb3fAC8y7bB7RIg3tLmv+zXAom99Sn+GnnvxY=;
        b=gLdHBZxc+J5SAbz+fKZmSAUmcOUENht7+3ACv4ynw60OH6h7rjufuiqjPKJ1psFKQJ
         h8jYAjPg2Unw6dJFGjky4zW3aMr98Wg6x4FXgQy4C55ZORmUDzVJ0qWeNW8+m98A8aCa
         OWl3Q7sq8h4Gtr5XKWx8nRr65jBi28uuI/vgo7w3nfSa8VeAlADz7TxvwNXHPf4erq7P
         5IMT3js5QOr8XoWnrZR7odINB7InQCDKfGVAv2tYit3+i1j8s/CguloG4hZsrd+M5gHK
         PC11IKjGrP1aL0poSNedHpii93Y/OZgT853INabqOfSXyMymoURMrflhSQprnLJKpN6K
         0gAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774306127; x=1774910927;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FGbAPMtb3fAC8y7bB7RIg3tLmv+zXAom99Sn+GnnvxY=;
        b=FfaE+OroZStamJg98Qp8Fgs4+f+4s3uOyQGSxx3hCigErIow6OM7163e4X57IE//B5
         5ZZ3vqYA0ddziHLlCE+04UK7MxjsTTGkT9jLWKDeLzBGCxbmQJNZ3dVE6TYOQuXlutb5
         Ud23USpn4Izyo+JLUWpgyt7SMKGsK+qG2YFisiFtEl84N9ckIkqm40MDW0qYFZob813m
         MfE9ITa/MlVM0/ZXyBwqJAmKXzVSvkNUZu7ehFRd7gMSRnP7e0FL6P3t1id00Bx1ira6
         NFX7ieR8lsuLTYP+fhSOX29x1aAUKvtn+w6ULQI/KwtrQHg+NTdIPcWcGYurs8Dkly6/
         LdgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgwtlNkVcGxgmy5lSp1/s8lpXsWPtUJ24D8OuYDuEGE+CYjDKWqX3tJG69NUt9caqKi+wM4PMlR1U=@lists.infradead.org
X-Gm-Message-State: AOJu0YzA/N7uFcS0hbGzEQg4UwwGuSkmtKLGEab1DsgttqvLj7iHPOYs
	ccJAt8dbo9ItCowrq3uE1vkjf6Iam4/qoIolift8d+tx7EFWcnGM6D0b
X-Gm-Gg: ATEYQzwchO5LtFDlviqL/GnPB1ULbO/nRLnu/k03aA6YuR8Rf9c2gCBX3dUPb6742KW
	yB5PuEUj6STmCg2Ny86cHePhweBNTClRYceRWgx0axZYVByvN7KNCNloF9z7wmegUAi01Z00zV6
	K4m9vaWAzdW0SlIjPL2G4VOZdWd1n+smro8mXdych/DMJtm3KXFLCLT/hqiMHJgvRVZYMYMkYl3
	fGuEXVg2Vmp421+6ObsaaoxGX1FjUAN85GfNC1K+9awsaURNYJgvXz/lyQnI8pWuA+tt0/bLRiL
	svObhPm6jASzNO/f81sG4FCf+HZAzr00/ad+ggbtw4CTgJA3J5lV3GztFJTH62sbTG8K+tbCuS0
	gAQxOOpwBWQVr+60mJJpgj2I8A8+40rexIcpQvNs7yZexN9TRH5CdRkeoIyB+D1DsapidfpV0XO
	3s+wXny3SrFF3T77w3P7xZV/MZoTEz5dRGxQ7N3I+MA5hoPuBbkEIxjuqZRi16xmCG
X-Received: by 2002:a05:7301:9f0c:b0:2b8:4c95:365d with SMTP id 5a478bee46e88-2c1095f54afmr6740228eec.10.1774306126689;
        Mon, 23 Mar 2026 15:48:46 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a296:1211:5ab0:bc95])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c1313bf5fdsm5080230eec.14.2026.03.23.15.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 15:48:46 -0700 (PDT)
Date: Mon, 23 Mar 2026 15:48:42 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Mark Brown <broonie@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-spi@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH 04/10] regulator: of: switch to using
 class_find_device_by_fwnode()
Message-ID: <acHCIA1d5-s2xkvz@google.com>
References: <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
 <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
 <acGFksyx3SA0kJ5b@google.com>
 <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
 <cf92122d-6b15-458a-bf89-189a0a6874f7@lunn.ch>
 <193e194a-498f-464f-b22c-c283c16db6c1@sirena.org.uk>
 <acGzJV3vKhuty3nd@google.com>
 <09072374-65e7-4792-af7e-97d7df93f9bd@lunn.ch>
 <acG9BPkFr_De-ulu@google.com>
 <27f4ed63-08a2-4621-8943-c50261de31cd@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27f4ed63-08a2-4621-8943-c50261de31cd@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_154847_687557_93D93437 
X-CRM114-Status: GOOD (  14.87  )
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

On Mon, Mar 23, 2026 at 11:39:03PM +0100, Andrew Lunn wrote:
> > If there is a deprecated property you can do:
> > 
> > 	error = device_property_read_u32(dev, "prop", &val);
> > 	if (error == -ENOENT)
> > 		error = device_property_read_u32(dev, "deprecated-prop", &val);
> 
> It is not as simple as that. There are a lot of optional
> properties. Say "prop" is optional? And not present. So -ENOENT. We
> then look for this deprecated property. That should not happen.

Why? That is exactly what you want: you favor new one if it is present
and fall back to deprecated one if it is absent. And then you decide
whether to continue or abort.

Or you are saying that new property is optional but old one was
mandatory? Not sure...

> 
> Using of_property_read_u32(np, "deprecated-prop", &val) actually makes
> it stand out, it is special somehow, which is good, because it is
> special.

If you only have of_property_read_u32() then it will not stand out. If
you advocate of using device_property_read_u32() normally but
of_property_read_u32() for deprecated only - that is a possibility, but
I do not know if anyone does this.

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
