Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D726C5CFC1
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 18:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GY5jszuAdQswwfXi4SgwxOMrXztdPF612MZqlkXBsps=; b=G6JBi7gqi7yh0a
	mD7pkiUaIMnjvyBh/vRDAPPiVThJBYq8nEnfapk14JLIFi3p1g7uQ0WpSGSjKZ04zJaERL7cHUw/L
	4zAQidVHEu6O9NtCf5Q1uh4OUB2lGGGyC4C6uxTYJ425Clg5lcRrk6BCc0yne2hutpIlPqDHj/5fh
	PQwVJgdeVyHztSNGzuvAp/P3Y7prjV3/9tb5Vx06OcxoeR9k4JEOK5NeSTWqc6aQFKP7WWtB2L7k1
	5PHd9W6ej/KOFiO2RFKn22zdTeMVPJlHf1so2abzhse9sVTKFtxgnNoQ/x3V9ItlwFex4vEpfekQx
	XFiJKKObUwbHas07463g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuwLx-000000031Xj-2e7x;
	Fri, 14 Aug 2026 18:10:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuwLw-000000031XL-27Bo
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 18:10:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E6CB543446;
	Fri, 14 Aug 2026 18:09:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A00391F000E9;
	Fri, 14 Aug 2026 18:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786730999;
	bh=/1k+IdRV8AU/C6pEVz8s9MPbFvC/whYePTctu3DVE28=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cytdhDuzOrsmNlq+KAvp769lyfJD8j+rjMjpWG0Xe9/WkKov5qB0s5ZnnU9H4CMhp
	 Hm/z5VVcsx4K3RV36Oi7PSYhrBafQ68uNhOT943hca5WYDcOHDP1NexXsntO9bdwTA
	 WmM9prCi5/83u/S3Pedk/Bbmn2VQgQaerxDvLtW9DCGkEHcNMQyBgh5/mWr05TA7Ua
	 TerGXEr25TUbyf7MI7RGveAAHd+qGmQK0D7BeVHx7s3tHN4Y2qjdoRlm4L+V+7ELji
	 s4DilVY43T22otUpjeuSU72Oaz3FO0GApVQ5dXZzDWYLaemB9AzV+H4KVJg3xMcDFB
	 MRIE/7t+dxTrA==
Date: Fri, 14 Aug 2026 13:09:58 -0500
From: Rob Herring <robh@kernel.org>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: sashiko-reviews@lists.linux.dev, vkoul@kernel.org,
	devicetree@vger.kernel.org, lee@kernel.org,
	neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
	olteanv@gmail.com, conor+dt@kernel.org, mfd@lists.linux.dev
Subject: Re: [PATCH v10 01/12] dt-bindings: clk: zte: Add zx297520v3 top
 clock and reset controller
Message-ID: <20260814180958.GG1981719-robh@kernel.org>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810071224.5AA301F00A3A@smtp.kernel.org>
 <20260810153805.GA1793660-robh@kernel.org>
 <gypuIvsORyye1Tbviu_vVQ@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <gypuIvsORyye1Tbviu_vVQ@gmail.com>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Aug 10, 2026 at 09:49:27PM +0300, Stefan D=F6singer wrote:
> Am Montag, 10. August 2026, 18:38:05 Ostafrikanische Zeit schrieb Rob Her=
ring:
> > On Mon, Aug 10, 2026 at 07:12:23AM +0000, sashiko-bot@kernel.org wrote:
> > > Thank you for your contribution! Sashiko AI review found 2 potential
> > > issue(s) to consider: - [Medium] Missing `resets` property definition=
 in
> > > the YAML schema. - [Medium] Missing `simple-mfd` in compatible string
> > > list for syscon with children.
> > Neither of these look valid to me.
> =

> Yeah, I removed the resets property in response to Krzysztof's feedback [=
0]. =

> And the syscon-reboot is registered by the MFD driver, which in turn goes=
 back =

> to Conor's suggestion at [1].
> =

> Should I reply to the list when I think Sashiko produced a false warning?=
 In a =

> way it feels like fighting windmills, as it will likely bring up the same =

> warning for further patch revisions.

Yes, otherwise the maintainers have to think about it first. :)

There's not a feedback loop in place though for sashiko. Hopefully that =

changes. Adding more detail in the commit msg might help. If it's just =

blunt info for guiding sashiko, I would put it after the '---'. =


> It does find a lot of real problems though and as a newbie contributor I =
feel =

> like it is a valuable tool.

That's good to hear.

Rob

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
