Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4E860A262E
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 10:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PiBcecnd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jWQdiUXF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iSrZPFMasKkN+Sq2BH4OcGfEcNpAnr+GGSPmhABAD+s=; b=PiBcecndfgJwjlDA/ycmPmX3Ae
	wvGRls7JP1yiEUYBgpp9r5F5cb55ro5YvZc76aeSoMITn0ROV9QZz6XPRRykGsmv2nHFWxsEoxS40
	/K8uilGgbTIZ5Du3QjYSQ+C5rECMRW6tSLh2goz80SbiAT/h7evdmnrAmvZxgDhRc6Afa4vUE0KNR
	feSM1G54+fNcS8SEqt1DwZzIpGg0Xe1kFIt4D0CpXmTU+96bI2eHloW9hueN+NLHcxL0qogSRJud1
	G7bbRTuo6gdwNsrpeF9QpA/wNgnjrkL3dl0AY/EHLN99Oc8wa5GtqHjL0MWKln3YrVjcRQJiOo/32
	ZmDG6gLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHZO-00000002CWo-3fu6;
	Mon, 26 Oct 2026 10:04:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHZM-00000002CTS-012f
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 10:04:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BF7ED403FB;
	Mon, 26 Oct 2026 10:04:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B0BB1F031E4;
	Mon, 26 Oct 2026 10:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793009083;
	bh=KFMxr7an5tNIKPbCe3wThekzv3eRib5vNm+X6SDA2co=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jWQdiUXFHi6BRp5+uRvy4vT6gb5MFB3TkbW+n+E/QeU9GMbl/oljUHn7kBTsTK+UX
	 3zuqiVtzQnmQ9bzCtC6MTNYg28RLIeB+NU1/P4E4QBNQN4K3ldp4Trj+X/MrlWEU0N
	 /WmXEubg5cJHRFS8+csk6tcHDzw4fATen5Ym5+qgDU8NuqSgDMLt1Tx/TwRRcQD61y
	 Qk0OYQl5HHM3EqKBfT2+UdYeTLQw2ug/4UUlhJi6UYwKYNPL/ZghSF4eIlGLb5ORkO
	 68wn2WCLkB1fwnHjSiXwJg8/B8Fgv6PxVAVca36V9nZbcz+5A+7FRrME0qOMUvRiHf
	 AL4BbTCcsyNHQ==
Date: Mon, 26 Oct 2026 11:04:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vladimir Zapolskiy <vz@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Abel Vesa <abelvesa@kernel.org>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	linux-phy@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Waipio
 compatible
Message-ID: <20261026-saffron-hyrax-of-performance-0dc6d9@quoll>
References: <20261023163057.775917-1-vz@kernel.org>
 <OlcKP8HHAIXkRzYX6vdMrXfEbLNpOVLfNZytB-qiRopju0IaQ_xxKo-mlzphnAO1Pdg-y8mu0lcw0UsQZC0ZuQ==@protonmail.internalid>
 <20261023163057.775917-2-vz@kernel.org>
 <3dd8d329-a25a-4afb-935c-311cb8ddf094@linaro.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dd8d329-a25a-4afb-935c-311cb8ddf094@linaro.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Oct 23, 2026 at 11:43:03PM +0100, Bryan O'Donoghue wrote:
> On 23/10/2026 17:30, Vladimir Zapolskiy wrote:
> > Qualcomm Waipio SoC has six CSIPHY IPs, which are compatible with Hamoa
> > ones:
> > 
> >      qcom-mipi-csi2-phy acec000.phy: CSIPHY 3PH HW Version = 0x40010000
> > 
> > Hardware supports up to three different 0.9v level power supplies for
> > CSIPHY0/1, CSIPHY2/3 and CSIPHY4/5, but there is just a single 1.2v
> > power line VDD_A_CSI_1P2, which supplies all CSIPHY devices.
> > 
> > Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
> > ---
> >   .../devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 4 +++-
> >   1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> > index 1f1e2a4993b2..2a11ca7c7d11 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> > @@ -19,7 +19,9 @@ properties:
> >       oneOf:
> >         - const: qcom,x1e80100-csi2-phy
> >         - items:
> > -          - const: qcom,glymur-csi2-phy
> > +          - enum:
> > +              - qcom,glymur-csi2-phy
> > +              - qcom,waipio-csi2-phy
> >             - const: qcom,x1e80100-csi2-phy
> > 
> >     reg:
> > --
> > 2.53.0
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

No. There is no such thing as Waipio.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
