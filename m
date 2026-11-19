Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D2A60A260C
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 18:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KD52n0r4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=mFVkDPWN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Lh+OqcKQgkmn+XHZiYiZ9d69GaKTHpdc+l+UZHp6IG0=; b=KD52n0r4lesEb4ymoDT7kfDWGi
	lmMfxDvryZqJFRTvZ3ugvNcsv3/GCTZu/nT8dxUbf0UcV3WH02YYqRmzHWJ/cr3rQPeJAjLw0I3Cb
	It9GJXy21V/g39D+CONjfok0jtfss513WhqLTdH0UMSmK2/mEYCf1jyz30Eduy92YGDkp/jenW+L8
	T+kxJbuQ0bRZvjWoWHumtOeBJLBJ2HLwGZIDObBHYZ4rSI0CnsjYQ2Rk716x9wJQ4LTYWJ+fRHnHh
	x+c5NFT89tWVtNFTAEihNcXx+uUbwIeVoYdFbNLa6s4aznaDliHHRzqCHRKf1xClQR/E4O0F+D7SV
	YmU+sJ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU6kd-0000000Cz9F-0ghq;
	Thu, 19 Nov 2026 18:20:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU6kc-0000000Cz8s-1SFI;
	Thu, 19 Nov 2026 18:20:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AB31342AF5;
	Thu, 19 Nov 2026 18:20:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B0EC1F000C5;
	Thu, 19 Nov 2026 18:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795112449;
	bh=5cY+QOFSRab+vw7Ar5Uc+Mh1ld4eiD0jvPyComZKkI8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=mFVkDPWNUUaI/lD8LZupI2Dv6P1hrK9IDKEmnqQP3hRcjIokrajVdotKHQAyu0NV/
	 LRn7QDpEIl7PkujuQRr3JBOYQ+mJ0JJKhFd3EksrdvpLpq/b5w75RdtGldsmRSuWuG
	 Ej9e2CQPJJ3vc6ty6KfikChr+J+4TieOCN5RUxlTysnTo90F+i3dQL/yhRCP6r9QKI
	 ZUEOfNqI0qQI7nJ3efrl+mVFZSuYADsTl8cPGElqU4t+ZqtyImk+pdJ6b3Tve3I3qk
	 6SUHTGBRqWjRzEw9B/SNFUNcnVx4t7sMsIkZvT0Ltu1LVrPnQ/gifStw7uYoI+dALN
	 894KwzJuU9EZw==
From: Lee Jones <lee@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Guru Das Srinagesh <linux@gurudas.dev>, Thomas Gleixner <tglx@kernel.org>, 
 Radu Rendec <radu@rendec.net>, Lee Jones <lee@kernel.org>, 
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bean Huo <beanhuo@micron.com>, Stanley Jhu <stanleyjhu@google.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Georgi Djakov <djakov@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Stanislav Aleksandrov <lightofmysoul@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org
In-Reply-To: <20261109-halliday-dts-v1-5-289114ab8197@gmail.com>
References: <20261109-halliday-dts-v1-5-289114ab8197@gmail.com>
Subject: Re: (subset) [PATCH 05/17] dt-bindings: mfd: qcom,tcsr: Add
 Halliday TCSR
Message-Id: <179511244123.91992.13336083093444200069.b4-ty@b4>
Date: Thu, 19 Nov 2026 18:20:41 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.16-dev-ad80c
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gTW9uLCAwOSBOb3YgMjAyNiAwMDozMzoxNyArMDAwMCwgU3RhbmlzbGF2IEFsZWtzYW5kcm92
IHdyb3RlOgo+IERvY3VtZW50IHRoZSBUQ1NSIGJsb2NrIG9uIHRoZSBRdWFsY29tbSBIYWxsaWRh
eSBTb0MuCgpBcHBsaWVkLCB0aGFua3MhCgpbMDUvMTddIGR0LWJpbmRpbmdzOiBtZmQ6IHFjb20s
dGNzcjogQWRkIEhhbGxpZGF5IFRDU1IKICAgICAgICBjb21taXQ6IDUxYTE3NjRmZjQzNGRmZjg2
OTk0ZjdlMDMxMjUwMzNkZWViZGE2ZTMKCi0tCkxlZSBKb25lcyBb5p2O55C85pavXQoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
