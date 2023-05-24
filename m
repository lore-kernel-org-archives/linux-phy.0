Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D270C77B73
	for <linux-phy@archiver.kernel.org>; Wed, 24 May 2023 15:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5j8ck19KdlWC8q9nvsHAjXk6B7cpTi4hSVCfMV/bZkA=; b=vDBvr9hT+TdsMU/Z4cm4bpNqTQ
	TTaguSeFXRApVeP7lUc9bqYCJmdem1P1pZmIgxYIqxrJt9d14guqo2S9/ZRx1Kf+PSEVECix1oWjI
	OYPdTS+b7PthNMp6KgEqLr0jZTgDkMx5TV7EByIsS8M5dmRo/h70zrGOeV9SuA/z6byCmjOt5P0tv
	JtvwlzRJmCS0GCFX00/1M+odIfiu+NER4GO679gnnT6J8fWWJ/mfUwCwuO75pNgEqTr3CQjuwJ7sx
	+XKvcNr0VbT4sHfzTvogMNbzzrbzQLRgDFSYemGNgGpv7/U/DDfg1qjX5Qm0A3EQUkw5CM+gLjmPd
	Yv51q75w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1qMo-00DpeP-2F;
	Wed, 24 May 2023 15:25:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1qMm-00Dpdo-1L
	for linux-phy@lists.infradead.org;
	Wed, 24 May 2023 15:25:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BB64763E40;
	Wed, 24 May 2023 15:25:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67EE5C433D2;
	Wed, 24 May 2023 15:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684941931;
	bh=1n1TgJpn6zCcOlq4o6xSCc9Ij4UPzU8w84Q1fRsp1Jo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YueoG3vygEy+hqpoQiMW35n4bw0sMCh8qAR0ifYYOwYM+LyyMTfaon4cnXT7wQ1hb
	 qDpQTEolv9BpSyuYz8+DNRyamOZZ+gkHF5T4T1PxewbYZIxJlBDeXODHxFuWcn/XsC
	 y5Cy55BlJ+c1HI6k/5mnnuIRKJJ4AuXhL1HXw3GTJ1Q9Lp1oq7rrHNP1P5L1GBkAVc
	 UmhFABn6KtX+hMQ8K2oL9HSWCzT9oHpAlm0rcdhmvuh4mPWAdQhkV11Kv2N68cgOaC
	 Esq4WUsiyQoIEksTFROAEOpv3OhyQqaRxf6O1mlm3xcgsog2rdml9o0FKt5EUW4s+q
	 F9fjUEsLu181g==
Date: Wed, 24 May 2023 16:25:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,qmp-usb: fix bindings error
Message-ID: <20230524-sleep-grader-5744eb82e358@spud>
References: <20230521195200.11967-1-dmitry.baryshkov@linaro.org>
 <20230522-babble-impeach-efe7ed754a08@wendy>
MIME-Version: 1.0
In-Reply-To: <20230522-babble-impeach-efe7ed754a08@wendy>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_082532_502185_0A90B4AB 
X-CRM114-Status: GOOD (  12.37  )
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
Content-Type: multipart/mixed; boundary="===============2903946993504458722=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2903946993504458722==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rsHT/5SgqDl43nWb"
Content-Disposition: inline


--rsHT/5SgqDl43nWb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Vinod,

On Mon, May 22, 2023 at 01:18:24PM +0100, Conor Dooley wrote:
> On Sun, May 21, 2023 at 10:52:00PM +0300, Dmitry Baryshkov wrote:
> > Merge two allOf clauses, which sneaked in in two different patches.
> >=20
> > /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy=
/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" wit=
h value "[]" (original value: "[]")
> > /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy=
/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: [error] duplication of key "all=
Of" in mapping (key-duplicates)
> > /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy=
/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" wit=
h value "[]" (original value: "[]")
> > /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy=
/qcom,sc8280xp-qmp-usb3-uni-phy.yaml: ignoring, error parsing file
>=20
> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> You may as well trim at least that from the file paths, if not more.
> That's w/e though,
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Could you pick this up please to unbreak dt_binding_check in next?

Thanks,
Conor.

--rsHT/5SgqDl43nWb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG4sZQAKCRB4tDGHoIJi
0ir/AQC91S4TuR61yXAGPV+1aFilDjZGIUJ8c1F6sTF3bknVtAD5Af5szWov6DBm
H2jkx3VYdQ6DLFp4bRnYqttUGmqsVwI=
=R1os
-----END PGP SIGNATURE-----

--rsHT/5SgqDl43nWb--


--===============2903946993504458722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2903946993504458722==--

