Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D837C7EE23
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 22:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ubb42ViAcThbnfL45CkG90AKnzgBC0MlvoN5xD396vQ=; b=EqOsuLZlu8MonuXou/1mWIczU0
	yzuZYu1clEwapswmI309zXMn0ANSv5BTArhlL5oKPCwmZqQxzXumugWR8UQJk18Be/1X9ffE1UDmf
	//oVEA5ldKvn/xl377X/FVTw67XMvipAJITjslImZo8zyq73if+O9A1kFkKViul2iIqKl9TsGXIiE
	KQU0i703vuIrSXlLJOnFK84jXpuAnbk0T7/H37poG5lRa2gvKaUD4h+mdc0A7sQQGPSAAnkBWhFGR
	hnlZsioAK6VJWNhj8maXq2z8uMdHhBP56cYESg0q7Z01iZGR7RBAdW3aeye6xT6V+9A8pa3mE/lOf
	+DA5Hg9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3lUj-00Bq1s-0i;
	Mon, 29 May 2023 22:37:41 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3lUf-00Bq1C-0M;
	Mon, 29 May 2023 22:37:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A23B161A3F;
	Mon, 29 May 2023 22:37:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD171C433EF;
	Mon, 29 May 2023 22:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685399856;
	bh=XADXXIo5dAHX5IqP3SUp9dKcn5Etse/PnFHYz/qnwFc=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=YmQqtCTo8AieUtdChigdZ8Dk9RaNdxvrsfGZc8+2nBMRReVqDtEJOECb11df+V8RQ
	 maeEs7YOUmJS/s/yyi7wV+BJ3xjEkexr0FowkURkomFH9Y4zwWq3pAd3WLoCQNgiKq
	 o8qTmc/34Qaun6US519bndh2D7HwHsVKxmNt2I1oNyQJGrGmHCVPcLUDd35njyNuI0
	 TntWQB3OkGI7ionah9yd+eovkF6HmaNfLGak7F3E1uCRKw33vF8pNqh3WKBbgaIfjl
	 kq34M5YLs/GLDVU1j2JS7XmX8+sbAjXFRFN3JfLAjypT1FXMO5AgWwLB/8Fis32fZ9
	 B4IRiUHquwxfA==
Date: Mon, 29 May 2023 23:37:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
	soc@kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
Message-ID: <20230529-bonsai-during-37a47a528ff3@spud>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-2-guptarud@gmail.com>
 <20230528-decode-creasing-f5b3996163e5@spud>
 <ad7a6ee3-cabb-6f92-a595-8791801cfe97@gmail.com>
 <a8d3d68d-d202-ddba-3289-65b347807538@linaro.org>
 <CSZ46N3I9GM7.NON5KMJ66OK5@Latitude-E6420>
MIME-Version: 1.0
In-Reply-To: <CSZ46N3I9GM7.NON5KMJ66OK5@Latitude-E6420>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_153737_196273_080EDF5D 
X-CRM114-Status: GOOD (  21.71  )
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
Content-Type: multipart/mixed; boundary="===============5589590501507577995=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5589590501507577995==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UNHl2eOZKPlgddkR"
Content-Disposition: inline


--UNHl2eOZKPlgddkR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 29, 2023 at 06:28:05PM -0400, Rudraksha Gupta wrote:
> On Mon May 29, 2023 at 3:41 AM EDT, Konrad Dybcio wrote:

> > Please fix your email client:
> >
> > - wrap each line at about 80 characters
> > - don't trim messages unless they're very long or
> >   there's some other good reason
> > - Don't send v(n+1) as a reply to v(n), send it in a
> >   separate thread.
> >
> Gotcha, I will do that next time. Should I still send v2 in a separate
> thread?

That'd then be either [PATCH v3], or [RESEND PATCH v2]. Ideally v3 since
you will have added the tags you received on v2.
AFAIK Bjorn uses b4, which should be able to deal with the series as-is,
but sending a v3 with the Acks etc would not be a bad idea. You
should probably give it a couple days before doing that to see if it
gets picked up before doing that.

> Not sure if I should as I don't want to spam anyone.

Sending new revisions of patches as a new thread is not spamming, we
signed up to be maintainers, or get to email from the lists, after all.
Sending several revisions of the same patches in a day would be spamming
though, but that is not what we are talking about here ;)

Cheers,
Conor.

--UNHl2eOZKPlgddkR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHUpKgAKCRB4tDGHoIJi
0rU+AQCTPbCHuhNalq6gMoNGtKpdLb+u+UIdqV4I+3ZSRsJqAAEA0GVxTI8YrR5J
HkOn1L0iWEt1ozLwDUw8VCg4/OOLew8=
=NcRs
-----END PGP SIGNATURE-----

--UNHl2eOZKPlgddkR--


--===============5589590501507577995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5589590501507577995==--

