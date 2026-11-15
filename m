Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE14A606A330
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 19:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Tfjjstyh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jpB9g9CEkMrnopAyzcZxz7T3muebzIYJ8UQD4X9RcwE=; b=TfjjstyhxOHzDcGcex1u6IAZSY
	vIEmrzYEd0ZZffZb51Ct5UejbC0nhJdTEQRTgHH5PotOmfxO9xLWhU1cRMcZkEb3zijP7Z0wsKIeX
	NeG3GPkVhw1+dmoeTYpb9kvbWRWbUwep2/AKgl0H2Ea77JtF5oy2SQIDPzqCOPJVZZmCJFz9S39vb
	q6BiEVudHNN8xpjD+smL468NdwEAPZ1fvf8bmYY1RbpCoXDH2U98bL8U/CLIkf2g3J93K9bj96RCc
	Y4MmdKJZKEj5iXwQW3wmR9+TtXSLHtkLb8yoXdzttWuWWmQNrFQ9SYttYncxbhwNGtStm8GEkEcAU
	1YkBdEkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSfmn-00000000NFx-2Ri2;
	Sun, 15 Nov 2026 19:21:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSfml-00000000NFg-33UG
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 19:21:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 32859601CC;
	Sun, 15 Nov 2026 19:21:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8555E1F000C4;
	Sun, 15 Nov 2026 19:21:03 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add SA8797P eUSB2 PHY
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Hiren Gohel <hiren.gohel@oss.qualcomm.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <0032f652-4ba1-4a52-9241-635207f0caa1@oss.qualcomm.com>
References: <20261026094118.3264112-1-hiren.gohel@oss.qualcomm.com>
 <20261026094118.3264112-2-hiren.gohel@oss.qualcomm.com>
 <0032f652-4ba1-4a52-9241-635207f0caa1@oss.qualcomm.com>
Date: Sun, 15 Nov 2026 11:20:55 -0800
Message-Id: <179477045510.107393.16167606981222781332.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1276;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=CmDdC5yIx2xWLSRLzs1ukzwBn8nzVj0C0NkdH037HDk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq+gYZimshdPDzOc4sRn6gnSD/oT3DoXrlvEjdO
 15rkiPgtheJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCavoGGQAKCRBVnxHm/pHO
 9eOEB/sHtI5U7bRC2uNbuJ7/GYjoeaJ8CAINi7Q6/Xt6MxNRMpbXi3g7+C7o+tlVxa6f94KyB8I
 Pny3DgHE91A9vhgrv8GTx1xw/OAZmJRc8PkHuERYkmHBJHKno/Us7XASR0jebuvIRj6/C3XfNGE
 gJDfAZi/Wxjp/7jCDT+THFGgKMMLOWL8IZd7QaAao77Mn2X2J0tsL7VhusXUcLyo83jjeY+2nK2
 bVedOn9DtCzb8qnUA7KPocb2eGo0PJWM8nprAMNgpS/Dr4Gy9U3R+ok+15ZrUK6JWCV2maucAVv
 2ha2fQK1Zy+LL5Qy0YeH8KYga2HZG313QGtoBMkvsVVBOx5+
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT,WEIRD_QUOTING
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-27 12:00 +0100, Konrad Dybcio wrote:
> On 10/26/26 10:41 AM, Hiren Gohel wrote:
> > SA8797p platform abstracts resources such as resets, clocks and
> > regulators in firmware. The SCMI firmware exposes multiple protocols to
> > control such resources which are identified by protocol_id.
> > 
> > For this USB phy, 2 SCMI protocols are exposed by the firmware:
> > * power domain management protocol (protocol_id=0x11)
> > * performance domain management protocol (protocol_id=0x13)
> > 
> > The power domain has 2 indices: 'core' and 'transfer'.
> > * core controls the regulators, the clocks and the reset
> > * transfer only controls the clocks
> > 
> > For example, to power on/off the PHY, we should use the 'core' domain.
> > To disable data transfer and keeping power enabled, we should use the
> > 'transfer' domain.
> > 
> > Add a new binding for the Synopsys eusb2 High-Speed USB PHY
> > found in SA8797P.
> > 
> > Note: the performance domain (0x13) exposes opaques values (0xa to 0x11)
> > for which we don't have any information.
> 
> How come we don't have any information for what the firmware
> that ""we"" wrote does?
> 

And it always puzzles me how each peripheral invents its own ABI for power
domains :/

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
