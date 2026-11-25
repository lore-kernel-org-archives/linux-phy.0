Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA0B606A330
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 03:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iIQXzssE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=isBXPg8V
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GRiQwKZJvlIWMuPUsC2i9uwlyW1sUmBJnItoavrKRGA=; b=iIQXzssEPIy1ZJ9UNRZ/4lBji4
	SiNR8yDeVwjieF/5nPi40k+oI9/QuslnrYecZq6y07Hkt5L7HOtBgj7qM1wfnVLS2s4t5MiSgtGOU
	HxdlRaxEFviipUMrUau0GbkgzvtDqUcEeXyWZmwizRXGPlOKIIsCErtUfAJX5qngfkCwvEf5hC1tX
	AEMYMocLXlgm5Mm03HM9xWI6dXvNaftYR5PX0l+5sky2rybDXpCafEA2Hc5qU2gD7LBPjfgDfX8kQ
	DDtBPuc30pVntlValE57eZeX9cD7i6TFWK1Cg3Xyte2AOBhpjRYWCVImaXnJf9I3BM9+W8cstsDcs
	OpAJV3lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW49h-00000008MOv-46FF;
	Wed, 25 Nov 2026 03:58:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW49f-00000008MOp-39mn
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 03:58:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 324F14307D;
	Wed, 25 Nov 2026 03:58:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0257A1F000C0;
	Wed, 25 Nov 2026 03:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795579126;
	bh=rUSncYOFDalKV12+0CuOreGIfe6/pyEZf5JX4JuwEJM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=isBXPg8VYtB1N39rM3LjkhQAjwIdftUqOM3mYyT/1J4w36E4lbXGN8M0k5O8w0J8q
	 W5HXT7bibsuZj1hoTMHZsUAo+92Ai8nY+FfnTNWSAg1O5Kdc9QuXq0xWkfOGikKr9P
	 qKF2YsKfKpIkrWCv4JIqIhp2xOBajEf6e5a6dJqvqEa+AY5TOaN5us7EcKp/RC36xG
	 NPSqoHNxoWaCMSPKwtmHhPji8riPNJc3AzPbR/pWvGcGU9ywHVNz+MjQTX+mcjcQRi
	 qxpxlujdz8CkewasHRPPioB3/PpqvZejVvR+M1Fku2vQO7OLLqaRFd6tiAv4MbIA0C
	 wEREpbzXfMHxw==
Message-ID: <sashiko-outbox-232541@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 13/14] arm64: dts: qcom: Add initial Halliday dtsi
To: "Stanislav Aleksandrov" <lightofmysoul@gmail.com>, "Bjorn Andersson" <andersson@kernel.org>, "Konrad
 Dybcio" <konradybcio@kernel.org>, "Abel Vesa" <abelvesa@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Robert Marko" <robimarko@gmail.com>, "Guru
 Das Srinagesh" <linux@gurudas.dev>, "Thomas Gleixner" <tglx@kernel.org>, "Radu
 Rendec" <radu@rendec.net>, "Will Deacon" <will@kernel.org>, "Robin Murphy" <robin.murphy@arm.com>,
 =?utf-8?b?Sm9lcmcgUm9lZGVsIChBTUQp?= <joro@8bytes.org>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Wesley
 Cheng" <wesley.cheng@oss.qualcomm.com>, "Vinod Koul" <vkoul@kernel.org>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Alim
 Akhtar" <alim.akhtar@samsung.com>, "Bart Van Assche" <bvanassche@acm.org>, "Bean
 Huo" <beanhuo@micron.com>, "Stanley Jhu" <stanleyjhu@google.com>, "Herbert
 Xu" <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, "Rafael
 J. Wysocki" <rafael@kernel.org>, "Viresh Kumar" <viresh.kumar@linaro.org>, "Amit
 Kucheria" <amitk@kernel.org>, "Thara Gopinath" <thara.gopinath@gmail.com>, "Daniel
 Lezcano" <daniel.lezcano@kernel.org>, "Zhang Rui" <rui.zhang@intel.com>, "Lukasz
 Luba" <lukasz.luba@arm.com>, "Georgi Djakov" <djakov@kernel.org>, "Sibi
 Sankar" <sibi.sankar@oss.qualcomm.com>, "Ulf Hansson" <ulfh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20261125-halliday-dts-v3-13-5c8311c0b70b@gmail.com>
References: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com>
 <20261125-halliday-dts-v3-13-5c8311c0b70b@gmail.com>
Date: Wed, 25 Nov 2026 03:58:44 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtMb3ddIGFybTY0OiBkdHM6IHFjb206
IHVuZG9jdW1lbnRlZCBxY29tLGhhbGxpZGF5LWNwdWZyZXEtZXBzcwogIGNvbXBhdGlibGUKLSBb
TG93XSBhcm02NDogZHRzOiBxY29tOiB1bmRvY3VtZW50ZWQgcWNvbSxoYWxsaWRheS10Y3NyIGNv
bXBhdGlibGUgaW4KICB0Y3NyIG5vZGUKLS0KCmNvbW1pdCA4NmMxOTM0ZjBkNWYxZmEzMjU2Y2E5
YTFjYzZjNDZmMzdmNzllNjU5CkF1dGhvcjogU3RhbmlzbGF2IEFsZWtzYW5kcm92IDxsaWdodG9m
bXlzb3VsQGdtYWlsLmNvbT4KCmFybTY0OiBkdHM6IHFjb206IEFkZCBpbml0aWFsIEhhbGxpZGF5
IGR0c2kKClRoaXMgY29tbWl0IGFkZHMgdGhlIGluaXRpYWwgZGV2aWNldHJlZSBzb3VyY2UgZm9y
IHRoZSBRdWFsY29tbSBIYWxsaWRheQpTb0MgKFNYUjIyNTBQIC8gU25hcGRyYWdvbiBYUjIrIEdl
biAyKS4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYWxsaWRheS5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2hhbGxpZGF5LmR0c2kKPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmEzMjA3YzBjOGQ0YjIKPiAtLS0gL2Rl
di9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2hhbGxpZGF5LmR0c2kKPiBA
QCAtMCwwICsxLDE4NzEgQEAKClsgLi4uIF0KCj4gKwkJdGNzcjogc3lzY29uQDFmYzAwMDAgewo+
ICsJCQljb21wYXRpYmxlID0gInFjb20saGFsbGlkYXktdGNzciIsICJzeXNjb24iOwo+ICsJCQly
ZWcgPSA8MHgwIDB4MDFmYzAwMDAgMHgwIDB4MzAwMDA+Owo+ICsJCX07CgpbU2V2ZXJpdHk6IExv
d10KU2hvdWxkICJxY29tLGhhbGxpZGF5LXRjc3IiIGJlIGRvY3VtZW50ZWQgaW4KRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9xY29tLHRjc3IueWFtbD8gIFdpdGhvdXQgaXQs
IHJ1bm5pbmcKZHRic19jaGVjayBvbiBhbnkgYm9hcmQgRFRCIHRoYXQgaW5jbHVkZXMgaGFsbGlk
YXkuZHRzaSBmYWlscyBzY2hlbWEKdmFsaWRhdGlvbiBvbiBzeXNjb25AMWZjMDAwMC4KClsgLi4u
IF0KCj4gKwkJY3B1ZnJlcV9odzogY3B1ZnJlcUAxN2Q5MTAwMCB7Cj4gKwkJCWNvbXBhdGlibGUg
PSAicWNvbSxoYWxsaWRheS1jcHVmcmVxLWVwc3MiLCAicWNvbSxjcHVmcmVxLWVwc3MiOwo+ICsJ
CQlyZWcgPSA8MHgwIDB4MTdkOTEwMDAgMHgwIDB4MTAwMD4sCj4gKwkJCSAgICAgIDwweDAgMHgx
N2Q5MjAwMCAweDAgMHgxMDAwPjsKPiArCQkJcmVnLW5hbWVzID0gImZyZXEtZG9tYWluMCIsCj4g
KwkJCQkgICAgImZyZXEtZG9tYWluMSI7CgpbU2V2ZXJpdHk6IExvd10KU2hvdWxkICJxY29tLGhh
bGxpZGF5LWNwdWZyZXEtZXBzcyIgYmUgYWRkZWQgdG8gdGhlIHYyIEVQU1MgY29tcGF0aWJsZQpl
bnVtIGFuZCB0d28tZG9tYWluIGNvbnN0cmFpbnQgaW4KRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2NwdWZyZXEvY3B1ZnJlcS1xY29tLWh3LnlhbWwgc28gdGhhdApkdGJzX2NoZWNr
IHBhc3NlcyBvbiBjcHVmcmVxQDE3ZDkxMDAwPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEyNS1oYWxsaWRheS1kdHMtdjMtMC01
YzgzMTFjMGI3MGJAZ21haWwuY29tP3BhcnQ9MTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
