Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93F8DC55822
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 17:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QnzpvNDVmhA9tv06MtU8QzyH9utVB6BRlgQgIu5/dMs=; b=I1SNTedwANxZ0binC6QPu9dAUd
	eg/HivqKwx9nwvctcMBgqZ4hbCsNJ4shHGpblX87PtlFGpVi7hnSPoeP8Xa5w1UJf1aCiKxST4DTG
	EbbAcT2LkqodMpqPVP3MQFvqLNtySLTsLgaFrUpeAf0WpeyjaIpH/vK083edW3jpcHGhfCR+4AFF7
	8Ti58ATh+lO1VdFY27x3dHJgbuJcbX5IpwwhCBrAYKkO/giYfcd8toLxx0WrBNyYhJ4SEDmj33wM9
	KHqjtxvXm5l+Dl7XXshhPdwT1ugRQNWQ1k/Z3xu/Zz9+5TPLhAMi/zu9i+07rapy/uYQClsDAipIb
	JFyDwX0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqwmH-00000000GVu-3iUk;
	Mon, 03 Aug 2026 17:48:41 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqwmC-00000000GTr-43ID
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 17:48:40 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-49802c418b5so19466065e9.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 10:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785779315; x=1786384115; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HnDKjAsExIlIO6cGLAGlNzQp1IiRGZFjDF5mAKUFBPE=;
        b=B7yf0dcy2Kf7AMYjkWntq0vP7h3M5z3tJzb+5OI33CbnJYHg+Xtan+zDjzUCPSTglN
         R3ep3m2D863yj6MHbJaYuwcD0JWVfDScCuDfbB1uBZ+r1PTm5hkTfebsr2nK8Gg7901j
         WA8JXhq8oUkmKVHcqCA4qqaGoh2ffI2ez23KO8mu+Pj8iNFJI2saQVxlTAG+YUsX4pu5
         On1VzezJXkokr5voefXF/aMyP94yRFv4mHM299wCTiF5sqiWL3xxlgibDHgHjhh+7USX
         di8mVRnsMZDBfuHUq4ZNkvQxrO8agQHG+HA0W3RJXqfCstkL2E6uEXAQ5a9ox+xhU9ya
         qCPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785779315; x=1786384115;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=HnDKjAsExIlIO6cGLAGlNzQp1IiRGZFjDF5mAKUFBPE=;
        b=ouIB/U71lZb/bwH32IYXg/xn7f6+vJi5j97mIrcV4kWNNPvjBkLjwe72s1zBFUewJa
         dHYmfkyeUhzi79iC6lSM4aDbhULoZxx1lmihP0YGUynDLB0xMl8tj0jkkvuiYD7D6dHo
         Vv0p6qSP9hUYvIm7JW2foRH/gMlm3o5NecPVO9dCR7Uvm8e8x2awvOqRMi086zCqeBjo
         iHabue+ILetecLUqcfkgYqGg4m978otNPvfVODEXLtspeSYaU8ZCtmRz21UCdbkuddK8
         o945TyIRYD7Z0tmbaE8sVnLdERUgpughAzXIVpkK6d7T5yddxNoPaJ5dRufmaA8iKIY3
         v1zg==
X-Forwarded-Encrypted: i=1; AHgh+RrJJcUU5UUFXtiEAcgbCxTWrG16u7R938rxgmb+YheP5SZU6w3kT/TXbHvM2qlVY0HCXFWj8keovsI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyO/95qYSUQvrNqmVFgzrQnKGIKbrZyJprtPQoqc6nPmEwqcMgS
	GEveMFnrwIuiyPb1RYCv+bsQKIMFI1DWdk6Q3NuCy9WKRu77lVTS24e1
X-Gm-Gg: AR+sD12WhJMqy0U8frlcz4emYtTytxIrZ8rHKkzBz/Ma9oOAiXb06iPkPlsmNtO4JFn
	EMrP0QqBRjrbjx4EVDLXOCjOdSVPqWAm3IO/YDtDcU+8DJQBywg9akotBVw+hqnNdUl3h9ZPopj
	TPlyD/3yJFN4m8zTqCHdithKJmDtHDY8owNcCJsKtUSA/dy6uhOpkbisTvqfbKMjR0UZ/+vD/Rf
	LMAQUkXKogCnzBbXc8r6b/+LVpDh918U0YgScu32C3wwbGGc8RnRHdjGsPQuLWMHUEzPvsJYMNY
	TNrUMaAS2kj7Cuv++EhMIJ2PhooDH+UpQjTitzx9cwPXyxU5Rhs/q4Xn8MQkOF7eVLXS1AGHoPl
	pZGpmN+SjoPfVpmrHelbbaGqiErBR8/N1SpLCNfuJcVhLcJZkvpHW1Yc6I1UIndB+mxrY1rnnMI
	o+/LrCB2NRMgGdERITs4rb/FpUqDU5DG/A/qYYUAezdUoeiCn+kYenVU+pirvWiM76jM2UqhysE
	g==
X-Received: by 2002:a05:600c:314f:b0:495:4572:21af with SMTP id 5b1f17b1804b1-4980c673252mr206970055e9.9.1785779314611;
        Mon, 03 Aug 2026 10:48:34 -0700 (PDT)
Received: from strix.localnet ([197.250.226.155])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49807b5b4a2sm295532795e9.1.2026.08.03.10.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 10:48:33 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Brian Masney <bmasney@redhat.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v9 05/12] clk: zte: Add Clock registration infrastructure
Date: Mon, 03 Aug 2026 20:48:18 +0300
Message-ID: <ky2t5IqOTfWMdfZsXE91Gg@gmail.com>
In-Reply-To: <anC72Cf1zKcLYWlC@redhat.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-5-d05530d85d28@gmail.com> <anC72Cf1zKcLYWlC@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_104837_099884_57CBB0FF 
X-CRM114-Status: GOOD (  24.67  )
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
Content-Type: multipart/mixed; boundary="===============6130973423848357069=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============6130973423848357069==
Content-Type: multipart/signed; boundary="nextPartnWZPMUIwR7W-Gw2dYxPvgg";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartnWZPMUIwR7W-Gw2dYxPvgg
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Brian Masney <bmasney@redhat.com>
Subject: Re: [PATCH v9 05/12] clk: zte: Add Clock registration infrastructure
Date: Mon, 03 Aug 2026 20:48:18 +0300
Message-ID: <ky2t5IqOTfWMdfZsXE91Gg@gmail.com>
In-Reply-To: <anC72Cf1zKcLYWlC@redhat.com>
MIME-Version: 1.0

Hi Brian,

Thanks again for the review!

Am Montag, 3. August 2026, 19:03:36 Ostafrikanische Zeit schrieb Brian Masney:
> > +	/*
> > +	 * Sanity check: Make sure all parents are there and write a clear
> > message rather than +	 * leave potential orphans.
> > +	 */
> 
> It's not common for clk drivers to have a validate function like this.
> That said, I know you are reverse engineering what's in the downstream
> BSP without documentation, and there is value in having this. I think
> it'd be useful to clarify that in the comments because code usually gets
> copied and pasted between drivers over time.
>
> That said, once it's verified that the clock tree is correct, can these
> checks be eventually dropped so that this validation logic isn't ran on
> every boot?

Yes, I plan to remove it eventually when support for the SoC is more mature. 
It has saved me some head-scratching as I have been working and re-working the 
clock tree. I'll clarify its driver specific role in the next submission.

Another option I contemplated is wrapping it in #ifdef DEBUG. What do you 
think about that?

> > +struct zx_clk_export {
> > +	unsigned int priv;
> > +	unsigned int binding;
> > +};
> 
> Sashiko flagged this as unused.

Indeed, that is a leftover from earlier - before I realized a simple unsigned 
int[] does the job fine.

---

I have a long-standing question about tristate/module support for drivers like 
this: I don't think the driver can realistically be unloaded. I have been 
testing driver unloading by removing the UART clocks from the DT (otherwise 
the clock driver is busy) and marking all clocks critical (otherwise 
unloading/unbinding will shut down the UART (and more) and lock me out of the 
system).

I have made it tristate because from early research into clock driver state of 
the art I gathered it was desired, even for drivers necessary for fundamental 
operation [0]. Did I understand this correctly? It also uncovered some linking 
errors that weren't obvious when compiling the driver into the kernel.

That said, I'd prefer to mark my init tables discardable with __initdata and 
think the module load support is going to go untested and bitrot over time.

Cheers,
Stefan

0: Chen-Yu Tsai's tak here mostly: https://www.youtube.com/watch?v=d1VIAnVb3hI

--nextPartnWZPMUIwR7W-Gw2dYxPvgg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmpw1GIbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoi7TkP/05WuGUn0opY7QQ8sZB6
OuKTG5SinWEzjuroAKgG/nD8WOveL+GRtp0cJ8+CUdvw0WpzZQeuRnSX/zDbSvXa
2G3pIBOvMcd0MOBBaEHUAtOHArZybsIuoFTVTzsaAYyHf2B7cc7KVbJZWRztmYSH
Z/OUYaxPHYoD6cHC4FlSNHyJplDqLj0LpgZOwY4zP0jaWLbEJpkCTK9Izl+ZIB4N
Q15I4WFfnyUi+J+3/mM3Rl4UYrS0U55ydarl5Io0PUsY/ORocxQY7jhXTvFyVmGV
xEythQnLVsvYici8F6d1tA/VcdG5jbo/JxRgrG53yGGuZX7x31CampUCrUOJRJ7t
bMsQwZz/VwpxL11Pg92G9bI3mzCHb+CZDRLT5zh+DN8cOkF5u4GBnI0CPKaqFAdw
deFt0WVnrrosFn0Vf0p17OrTiycj+f72S3L97DLCiH+0A02LR5XC6rxe5ia0xsFj
zXVl/z67OSLLN+g00eH/Gm7t6wSmRHdNY8QYBxaoIfY7NSPC4sfAm0BPcRfOtHEe
aN2QkZlUqy6LOPzLMKJXsVo1oXp94QXx5YgJpObLC1OH2GasPwX+teqCVXGyJZpt
we0fT64SnRaq5A4TfIcEcb2QJZUmH6znzcgROxCXZIJ1Dla1nW0ASQlNw2z5btj/
bbygfsidb6/n+WxVmEd5JJI+
=Lf/s
-----END PGP SIGNATURE-----

--nextPartnWZPMUIwR7W-Gw2dYxPvgg--





--===============6130973423848357069==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6130973423848357069==--




