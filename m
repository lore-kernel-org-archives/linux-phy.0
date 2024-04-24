Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFECFC4345F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Apr 2024 05:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHQUdfUZod/igQwx9Cr3cYF3Jzkn7Q/gO+mQrwBykvU=; b=MARHmHOBthpiEB
	j/os5cP0tPspRiFbBJnC6oLzejx/3T66r6WCcf5tT/7NrXBGgEHk2yZHPhOFh1taF+3rXneKKHDsE
	y99dvY5WHgeXL3hlz23qCLhrc+n/nFuCcVDsisTIf57Zz3kiOT3uN8SkSmmH+n39z2Ef9evZRfizs
	YGZpg4dXQZLmDrFjS6OF3RLUo9vJfCIZYqWXktfx6WJ0Fv/F0cZVGqavNR2c5Z2d9mVbpZ9dM6aUQ
	c1h794w37peQ1NIXDYtFxaDUpq8cbIUfXFCu8IBDqe8pRkdXbzyD55eF1vfenyc5YKJONnZ2Hr//i
	t/nJEQarrKb5+USmrgLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzVeG-00000002mNt-2PMi;
	Wed, 24 Apr 2024 05:58:28 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzVeD-00000002mMG-3H2c
	for linux-phy@lists.infradead.org;
	Wed, 24 Apr 2024 05:58:27 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-439b1c72676so218421cf.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 22:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713938298; x=1714543098; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X/W5HSMGzNKRFvroL7XEIB583TE1U/at3BEuUXdJmYE=;
        b=pTMrqdZds4Wd9BvruD5HBXEJFbLVfaayAKpSDk0M/0x/4fg+dLmMgD9jYgYyFnRkt9
         nnyyM5A4s/e4e9LKB4m8ySffwpsxiFKYlBaCekyjZWSWYRKyT9sdgOF0ByVFqPwlLd/L
         lvpyHz1XVc0T94e1mruaRqMttie+FX7vQfG+7iIliGr4nKnxAbfVCeN9k6OYr6jftISV
         SE19MJlCKwdXbf8VVD6y50POD+nHQ29YmLRPjHzo4G2C+Xne+r6rnPHf+ZFnrKVI27/f
         BU2234CASY1ybAyN3kkQ/MKyhZuraSdwJdvi6+MxkgrH1VZBkKT5APU/a0d7SFhQp9Um
         /QPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713938298; x=1714543098;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X/W5HSMGzNKRFvroL7XEIB583TE1U/at3BEuUXdJmYE=;
        b=F44FhqWLBzddMoJrC9YfeEbNPEoThhAmLCrUdL6GUVB+cNVERHPfhKRFMVTm/1pqjX
         Lw2EyUCjIyZOXRVE4jql306AsxnqHMPo+sy//Pwo+vJ5tcQJCIDwv18NcPzotleHeABu
         lJzdH05FCZuy3Prv9TeIAEX+610EwM8DzGkQKHXoA38VAKDBWfJVe9tqurjr4wgQqKPX
         MwoRvPBI7f3MZIrtMlLDsORmSSEgqsReFeqHnGe/Ff2GlWsG1piOBe6Uf12CmYfwyLbu
         WxcvDJuCXYYp3oyQUnKY8R2NQHDsODWOTgsAJ9OxnjPL4oTONmDx8LFGQsbhCdq2xar7
         8LZA==
X-Forwarded-Encrypted: i=1; AJvYcCWaFQLzaRJW0NAmy2mXG+y33f1jYQPrbPW43Y6fKcOSJBos38ouMa2VeM7rER8EHLVwFvUxwQWArq5qx1JpnpDTAaNiCZJE2rLFsxVGJA==
X-Gm-Message-State: AOJu0YyRC50Pwwdx/N7OxjY4wASgITUTFhc055j+srPEal6PH0nLdy2i
	AxUCdWX7QWJEThUg1y3b1jr5BYOqib2bOk2c36MajJ0OJ6bjue8fuoZkiHPDTapzBm2sjVhdeFy
	E7V4mV6NvbVDnG2gzQqqyFxqHa69RtZim/D/g
X-Google-Smtp-Source: AGHT+IFtH+TdYnY/R2NkKd7EY8OhaQPa4uA2hOiV9IhRrDt+9zqEvKh32061ELbCkTI4QNocIDZCt4lHutO/oQbF8iw=
X-Received: by 2002:ac8:6e81:0:b0:437:c89e:245b with SMTP id
 c1-20020ac86e81000000b00437c89e245bmr130751qtv.15.1713938297863; Tue, 23 Apr
 2024 22:58:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240105130404.301172-1-gatien.chevallier@foss.st.com> <20240105130404.301172-7-gatien.chevallier@foss.st.com>
In-Reply-To: <20240105130404.301172-7-gatien.chevallier@foss.st.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 23 Apr 2024 22:57:40 -0700
Message-ID: <CAGETcx8HdnspNfDEJP+cqShJPsDryzGkOVq6B99cFQzkZi3dMg@mail.gmail.com>
Subject: Re: [PATCH v9 06/13] of: property: fw_devlink: Add support for "access-controller"
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: Oleksii_Moisieiev@epam.com, gregkh@linuxfoundation.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alexandre.torgue@foss.st.com, vkoul@kernel.org, jic23@kernel.org, 
	olivier.moysan@foss.st.com, arnaud.pouliquen@foss.st.com, mchehab@kernel.org, 
	fabrice.gasnier@foss.st.com, andi.shyti@kernel.org, ulf.hansson@linaro.org, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	hugues.fruchet@foss.st.com, lee@kernel.org, will@kernel.org, 
	catalin.marinas@arm.com, arnd@kernel.org, richardcochran@gmail.com, 
	Frank Rowand <frowand.list@gmail.com>, peng.fan@oss.nxp.com, lars@metafoo.de, 
	rcsekar@samsung.com, wg@grandegger.com, mkl@pengutronix.de, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-iio@vger.kernel.org, alsa-devel@alsa-project.org, 
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, 
	netdev@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-usb@vger.kernel.org, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_225825_828693_74FB3B62 
X-CRM114-Status: GOOD (  16.76  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKYW4gNSwgMjAyNCBhdCA1OjAz4oCvQU0gR2F0aWVuIENoZXZhbGxpZXIKPGdhdGll
bi5jaGV2YWxsaWVyQGZvc3Muc3QuY29tPiB3cm90ZToKPgo+IEFsbG93cyB0cmFja2luZyBkZXBl
bmRlbmNpZXMgYmV0d2VlbiBkZXZpY2VzIGFuZCB0aGVpciBhY2Nlc3MKPiBjb250cm9sbGVyLgo+
Cj4gU2lnbmVkLW9mZi1ieTogR2F0aWVuIENoZXZhbGxpZXIgPGdhdGllbi5jaGV2YWxsaWVyQGZv
c3Muc3QuY29tPgo+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoKUGxl
YXNlIGNjIG1lIG9uIGZ3X2RldmxpbmsgcGF0Y2hlcy4gQWxzbywgdGhpcyBwYXRjaCBpcyBicmVh
a2luZyB0aGUKbm9ybSBiZWxvdy4gUGxlYXNlIHNlbmQgYSBmaXggdXAgcGF0Y2guCgo+IC0tLQo+
IENoYW5nZXMgaW4gVjk6Cj4gICAgICAgICAtIEFkZGVkIFJvYidzIHJldmlldyB0YWcKPgo+IENo
YW5nZXMgaW4gVjY6Cj4gICAgICAgICAtIFJlbmFtZWQgYWNjZXNzLWNvbnRyb2xsZXIgdG8gYWNj
ZXNzLWNvbnRyb2xsZXJzCj4KPiBDaGFuZ2VzIGluIFY1Ogo+ICAgICAgICAgLSBSZW5hbWUgZmVh
dHVyZS1kb21haW4qIHRvIGFjY2Vzcy1jb250cm9sKgo+Cj4gUGF0Y2ggbm90IHByZXNlbnQgaW4g
VjEKPgo+ICBkcml2ZXJzL29mL3Byb3BlcnR5LmMgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL29mL3Byb3BlcnR5LmMgYi9k
cml2ZXJzL29mL3Byb3BlcnR5LmMKPiBpbmRleCBhZmRhZWZiZDAzZjYuLjdmNzM3ZWFjOTFiMiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL29mL3Byb3BlcnR5LmMKPiArKysgYi9kcml2ZXJzL29mL3By
b3BlcnR5LmMKPiBAQCAtMTI2OCw2ICsxMjY4LDcgQEAgREVGSU5FX1NJTVBMRV9QUk9QKGxlZHMs
ICJsZWRzIiwgTlVMTCkKPiAgREVGSU5FX1NJTVBMRV9QUk9QKGJhY2tsaWdodCwgImJhY2tsaWdo
dCIsIE5VTEwpCj4gIERFRklORV9TSU1QTEVfUFJPUChwYW5lbCwgInBhbmVsIiwgTlVMTCkKPiAg
REVGSU5FX1NJTVBMRV9QUk9QKG1zaV9wYXJlbnQsICJtc2ktcGFyZW50IiwgIiNtc2ktY2VsbHMi
KQo+ICtERUZJTkVfU0lNUExFX1BST1AoYWNjZXNzX2NvbnRyb2xsZXJzLCAiYWNjZXNzLWNvbnRy
b2xsZXJzIiwgIiNhY2Nlc3MtY29udHJvbGxlci1jZWxscyIpCj4gIERFRklORV9TVUZGSVhfUFJP
UChyZWd1bGF0b3JzLCAiLXN1cHBseSIsIE5VTEwpCj4gIERFRklORV9TVUZGSVhfUFJPUChncGlv
LCAiLWdwaW8iLCAiI2dwaW8tY2VsbHMiKQo+Cj4gQEAgLTEzNjMsNiArMTM2NCw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgc3VwcGxpZXJfYmluZGluZ3Mgb2Zfc3VwcGxpZXJfYmluZGluZ3NbXSA9
IHsKPiAgICAgICAgIHsgLnBhcnNlX3Byb3AgPSBwYXJzZV9yZWd1bGF0b3JzLCB9LAo+ICAgICAg
ICAgeyAucGFyc2VfcHJvcCA9IHBhcnNlX2dwaW8sIH0sCj4gICAgICAgICB7IC5wYXJzZV9wcm9w
ID0gcGFyc2VfZ3Bpb3MsIH0sCj4gKyAgICAgICB7IC5wYXJzZV9wcm9wID0gcGFyc2VfYWNjZXNz
X2NvbnRyb2xsZXJzLCB9LAoKQWxsIHRoZSBzaW1wbGUgcHJvcGVydGllcyBhcmUgbGlzdGVkIGJl
Zm9yZSB0aGUgc3VmZml4IG9uZXMgYXMgdGhlCnN1ZmZpeCBjaGVja3MgYXJlIG1vcmUgZXhwZW5z
aXZlLiBTbywgeW91IHNob3VsZCBoYXZlIGluc2VydGVkIHRoaXMKcmlnaHQgYmVmb3JlIHRoZSBz
dWZmaXggcHJvcGVydGllcy4gQWxzbywgdGhlcmUncyBhIG1lcmdlIGNvbmZsaWN0IGluCmxpbnV4
LW5leHQuIFNvIG1ha2Ugc3VyZSB5b3UgdGFrZSB0aGF0IGludG8gYWNjb3VudCB3aGVuIHNlbmRp
bmcgdGhlCmZpeCB1cCBhbmQgcGlja2luZyB0aGUgb3JkZXIuCgotU2FyYXZhbmEKCj4gICAgICAg
ICB7fQo+ICB9OwoKPgo+IC0tCj4gMi4zNS4zCj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
