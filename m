Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0370606A32F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 18:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=l5i/oKIe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DCiTxJNN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=52KIDUkeWSRwjqSWG5fXJDaYUXGGs61Zi3FlnHeZ39k=; b=l5i/oKIeJrjtV7nOytZbTtyY0q
	SoWOHA1aEXxCG6hc6sdyLqwOi8YdJ0Lx0R6JGvAqjRI+PBW02OcqQATMJsc4A7iQuV7ccSPvmfEof
	PxSbbxjLDRLLQA0Vr7iILC76Qd4g9Z1A+bbocdedpgmsdJxfqfayFzAPuB3t3dqiExKK5+BzwNM2O
	eiGRft3XRqtUgjmR83LBlzy3in3OJNvdj0mxX4EeIdZzbb4iv3gN5M/pK2nhNJQwPbyUDNHjRppFu
	31C4zc9per1c/xIrduCm60Y4J0cuGJASTxjIQYkKsMQArCG67XJlN5gYMwgKlF3WmCPC3Fa1lSWoF
	1v932E1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPP14-0000000DSR7-1yAe;
	Fri, 06 Nov 2026 18:50:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPP12-0000000DSQC-1f5O
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 18:50:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 51082601BF;
	Fri,  6 Nov 2026 18:50:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 910491F0089F;
	Fri,  6 Nov 2026 18:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793991019;
	bh=XPLSi+DAAMgALOwx2pnSW/jNLcIadlw5dYi0ZDekG30=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DCiTxJNNWj8yScNmbKr2ZDp7CXOs0Ex5/GNRV3dpTrUPjUl5IhZ3iXrYFTsa6SnI+
	 +t3H+w7scH9KYfWFSHyP4G1EuWZicT+Y0/Zu8Fe4Rb0ofcWR2vNa5LBvFm9rtpXdPj
	 g/7KCrcv4HDDqOmLevkV9LKZ5Ltupl0LmVzZacWqWqtbq8ijzW/84qjkUR7+w303St
	 C4RrWaqHjUK4gFPcmkLcSRDCHxQmkRs6OQdsxD0xDuxf7xj/ScKpsF21/uGKhhdZpx
	 rnZcGnXQlJ3K+40ZzBUrYyW1+UArSmCtbZHY3WSSc/zrt/h+2/Ckm8UPyatNcpULU/
	 by+88G53+BnUg==
Message-ID: <sashiko-outbox-202106@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 6/7] phy: qcom-mipi-csi2: Add SM8150 CSI2 DPHY
 support
To: "Andrew Gigena" <mail@andrewgigena.dev>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-6-0103e8a0bbcd@andrewgigena.dev>
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-6-0103e8a0bbcd@andrewgigena.dev>
Date: Fri, 06 Nov 2026 18:50:18 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBxY29tLW1pcGkt
Y3NpMjogd3JvbmcgU004MTUwIGxhbmUgcG9sYXJpdHkgb2Zmc2V0cyBpbgogIGxhbmVzX2VuYWJs
ZSgpCi0tCgpjb21taXQgOGY0OTY4MGU2MWVkN2UzODFjZTllYjVkYjM0ZDU3ODNkZDFhZTkzMApB
dXRob3I6IEFuZHJldyBHaWdlbmEgPG1haWxAYW5kcmV3Z2lnZW5hLmRldj4KCnBoeTogcWNvbS1t
aXBpLWNzaTI6IEFkZCBTTTgxNTAgQ1NJMiBEUEhZIHN1cHBvcnQKClRoaXMgY29tbWl0IGFkZHMg
U004MTUwIHBsYXRmb3JtIGNvbmZpZ3VyYXRpb24gYW5kIGxhbmUgaW5pdGlhbGl6YXRpb24gdGFi
bGVzCnRvIHRoZSBRdWFsY29tbSBNSVBJIENTSTIgRFBIWSBkcml2ZXIsIGFsb25nIHdpdGggc3Vw
cG9ydCBmb3IgYSBmaXhlZCB0aW1lcgpjbG9jayByYXRlIGFuZCBzaW5nbGUgcG93ZXIgZG9tYWlu
IGF0dGFjaG1lbnQuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1taXBpLWNzaTItM3BoLWRwaHkuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1p
cGktY3NpMi0zcGgtZHBoeS5jCj4gaW5kZXggOTY2ZDc5Yzk4ZjliMi4uYjhiNjU4OWNlZTM1ZCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItM3Bo
LWRwaHkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0z
cGgtZHBoeS5jCgpbIC4uLiBdCgo+IEBAIC0zNTIsNiArNDE5LDM2IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgbWlwaV9jc2kycGh5X2h3X29wcyBwaHlfcWNvbV9taXBpX2NzaTJfb3BzXzNwaF8xXzAg
PSB7Cj4gIAkubGFuZXNfZGlzYWJsZSA9IHBoeV9xY29tX21pcGlfY3NpMl9sYW5lc19kaXNhYmxl
LAo+ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBzbTgxNTBfY2xrc1tdID0g
ewo+ICsJImNvcmUiLAo+ICsJInRpbWVyIgo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IGNoYXIg
KiBjb25zdCBzbTgxNTBfc3VwcGxpZXNbXSA9IHsKPiArCSJ2ZGRhLXBoeSIsCj4gKwkidmRkYS1w
bGwiCj4gK307Cj4gKwo+ICtzdGF0aWMgc3RydWN0IG1pcGlfY3NpMl9nZW5wZCBzbTgxNTBfZ2Vu
cGRzW10gPSB7Cj4gKwl7IC5uYW1lID0gInRvcCIsIC5zY2FsZWQgPSBmYWxzZSB9LAo+ICt9Owo+
ICsKPiArY29uc3Qgc3RydWN0IG1pcGlfY3NpMnBoeV9zb2NfY2ZnIG1pcGlfY3NpMl9kcGh5X3Nt
ODE1MCA9IHsKPiArCS5vcHMgPSAmcGh5X3Fjb21fbWlwaV9jc2kyX29wc18zcGhfMV8wLAo+ICsJ
LnJlZ19pbmZvID0gewo+ICsJCS5pbml0X3NlcSA9IGxhbmVfcmVnc19zbTgxNTAsCj4gKwkJLmxh
bmVfYXJyYXlfc2l6ZSA9IEFSUkFZX1NJWkUobGFuZV9yZWdzX3NtODE1MCksCj4gKwkJLmNvbW1v
bl9yZWdzX29mZnNldCA9IDB4ODAwLAo+ICsJfSwKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHBo
eV9xY29tX21pcGlfY3NpMl9sYW5lc19lbmFibGUoKSB3cml0ZSBsYW5lIHBvbGFyaXR5IGludmVy
c2lvbiB0byB0aGUKd3JvbmcgcmVnaXN0ZXIgb2Zmc2V0cyBvbiBTTTgxNTA/CgpJbiBsYW5lX3Jl
Z3Nfc204MTUwW10sIHRoZSBwaHlzaWNhbCBsYW5lIHJlZ2lzdGVyIGJsb2NrcyB1c2UgYSAweDEw
MC1ieXRlCnN0cmlkZSAoZGF0YSBsYW5lcyBhdCAweDAwMDAsIDB4MDIwMCwgMHgwNDAwLCAweDA2
MDAgYW5kIHRoZSBjbG9jayBsYW5lIGF0CjB4MDcwMCkgd2l0aCBjb21tb24gcmVnaXN0ZXJzIHN0
YXJ0aW5nIGF0IDB4MDgwMC4gIEhvd2V2ZXIsCnBoeV9xY29tX21pcGlfY3NpMl9sYW5lc19lbmFi
bGUoKSBwcm9ncmFtcyBDU0lQSFlfMlBIX0xOX0NTSV8yUEhBU0VfQ1RSTDluKCksCndoaWNoIGhh
cmRjb2RlcyBYMUU4MDEwMCdzIDB4MjAwLWJ5dGUgcGVyLWxhbmUgc3RyaWRlOgoKZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5LmM6CiAgICAjZGVmaW5lIENT
SVBIWV8yUEhfTE5fQ1NJXzJQSEFTRV9DVFJMOW4obikJCSgoMHgyMDAgKiAobikpICsgMHgyNCkK
ICAgIC4uLgogICAgcGh5X3Fjb21fbWlwaV9jc2kyX2xhbmVzX2VuYWJsZSgpIHsKICAgICAgICAu
Li4KCS8qIExhbmUgY29uZmlndXJhdGlvbiBmb3IgcG9sYXJpdHkgQCBDU0lQSFktYmFzZSArIENU
Ukw5ICovCglmb3IgKGkgPSAwOyBpIDwgY2ZnLT5udW1fZGF0YV9sYW5lczsgaSsrKSB7CgkJaWYg
KGxhbmVfY2ZnLT5kYXRhW2ldLnBvbCkgewoJCQl1OCBwb3MgPSBsYW5lX2NmZy0+ZGF0YVtpXS5w
b3M7CgoJCQl3cml0ZWwoQklUKDIpLCBjc2kycGh5LT5iYXNlICsgQ1NJUEhZXzJQSF9MTl9DU0lf
MlBIQVNFX0NUUkw5bihwb3MgKiAyKSk7CgkJfQoJfQoKCWlmIChsYW5lX2NmZy0+Y2xrLnBvbCkK
CQl3cml0ZWwoQklUKDIpLCBjc2kycGh5LT5iYXNlICsgQ1NJUEhZXzJQSF9MTl9DU0lfMlBIQVNF
X0NUUkw5bihsYW5lX2NmZy0+Y2xrLnBvcykpOwoKV2hlbiBhIGJvYXJkIGNvbmZpZ3VyZXMgbm9u
LXplcm8gbGFuZS1wb2xhcml0aWVzIG9uIFNNODE1MCwgZGF0YSBsYW5lcyAxLi4zCmFuZCB0aGUg
Y2xvY2sgbGFuZSB3cml0ZSB0byAweDA0MjQsIDB4MDgyNCwgMHgwYzI0LCBhbmQgMHgwZTI0IGlu
c3RlYWQgb2YKMHgwMjI0LCAweDA0MjQsIDB4MDYyNCwgYW5kIDB4MDcyNCwgbGVhdmluZyB0aG9z
ZSBsYW5lcyB1bmludmVydGVkIGFuZApvdmVyd3JpdGluZyBDU0lfQ09NTU9OX0NUUkw5IGF0IDB4
MDgyNCB3aGVuIGRhdGEgbGFuZSAyIGlzIGludmVydGVkLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEwNi1zbTgxNTAtdjcuNC1y
YzEtY2Ftc3MtdjMtMC0wMTAzZThhMGJiY2RAYW5kcmV3Z2lnZW5hLmRldj9wYXJ0PTYKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
