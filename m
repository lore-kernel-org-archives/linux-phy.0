Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7928AC48260
	for <linux-phy@archiver.kernel.org>; Tue, 13 Feb 2024 18:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WF+KsvejJYyujw1G8Br+w/Mw3n6De6OwdhJopqsXvf8=; b=dnowF9CoTcRjzc
	Sx+F+86U5YI8amgMJ4nZgNottOEZpEG5bXchqeu8lOizj7INsjl7Ht96PR3ypqOkWHYsSvPjLzm3z
	CC4ISzVk7HNQM1xdxDCgn1XVb9/j0LlscaeoPbgLnxNLEmXR+qew2kyiXIxAE7qHK+LN9Kl42jXtK
	1h26RDemTramZw5RLapJ3oFxWd5b6u+kTCquo1ZL3jPY1hrNqOYF2LR6aZy23y39IolHgScmf1GGI
	eKsT/KYIthLtbUYgTm8T2yigGRV89l+onBH1Wi7iu3AxcwCWmfvw0Quk1TiPJYvT/rHQKRDbWJVNM
	VZlgI6YwyyOKSpdBqEnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZxGN-0000000AHHm-0kh9;
	Tue, 13 Feb 2024 18:12:11 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZxGK-0000000AHHL-0uXe
	for linux-phy@lists.infradead.org;
	Tue, 13 Feb 2024 18:12:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7218FCE1C7B
	for <linux-phy@lists.infradead.org>; Tue, 13 Feb 2024 18:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2BB2C433A6
	for <linux-phy@lists.infradead.org>; Tue, 13 Feb 2024 18:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707847925;
	bh=iKy4z4zbKIkEBLCIqbOOas6HQLerzLx+0jCCkBHBKZQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VpaXiTQRZg0ZnhTOPSLiTS1eVkEjhPem+tuLW+dpBxbdW1/zwKPLqoD5WcVrKV9GN
	 KAmQnYLIKVPtJ4cVaRg0y3MyYaa/HG7w5plt0NU7g1CrfkjiY5C1vMP+0mlPQI9lbc
	 uCNk4tkjvAtodbZVXzC44ulWdQEC2PdpqUyzjIUfzf3cuO6ddcm/0Yh9e+6gigtUL4
	 yX1S3zHv5DaXqUO5jyldY1ynnS9ao8JpUr8rOwM1oPlf1v6fzC3yZE34/s/TCczVwS
	 cavEw7tRNDQiVG5HPZ9+gTjDiBuv4qYNrBpYdwh+sV+RMREETZiT80tldloTh+H/LY
	 dHqfKk6i/GcIQ==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d0fd07ba8bso26444341fa.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Feb 2024 10:12:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXpCPhQsT9oauHcuBQlbpyitF04jQeyw3kd4ytlTVhewEbV0Oke7SdMovGioLhJv0stN6fTF7lQ585zVun+K7nRpWo+5HokqrqMLadaVQ==
X-Gm-Message-State: AOJu0YwRHDYwMh7aale3d4pFzizU7rSecAMNej0hv1mr+BZUQwHcwMMw
	XamftCqZl3uaOFFlLtuPBgIJWSAQ3ZeAWSxj/9EjcjUOOLjX+oAQJavwCBEnRrys3M5FBv88RhF
	MRmeZ2ofjvIwvFfUvXx/3moLRaQ==
X-Google-Smtp-Source: AGHT+IFoI2nIw8HIgZSb58YNqQnldThBVqDuYOeRmmQBRueJPhHiaK9E85g01QPZR04/VBn2+u4CxK0TcwjK6Jta0Xg=
X-Received: by 2002:a05:651c:b07:b0:2d1:1440:56f0 with SMTP id
 b7-20020a05651c0b0700b002d1144056f0mr30600ljr.15.1707847923891; Tue, 13 Feb
 2024 10:12:03 -0800 (PST)
MIME-Version: 1.0
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
 <20240121-sm7125-upstream-v4-2-f7d1212c8ebb@gmail.com> <20240212222232.GB2655166-robh@kernel.org>
 <CAA8EJpoymmOBc3CfNHJKBT8BNje_s2a5uGPde3QHYv3vQ97=-Q@mail.gmail.com>
In-Reply-To: <CAA8EJpoymmOBc3CfNHJKBT8BNje_s2a5uGPde3QHYv3vQ97=-Q@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 13 Feb 2024 18:11:50 +0000
X-Gmail-Original-Message-ID: <CAL_JsqLGVBjiYt5tG0GFxxeHmNDD1PgJx3ab-n2x0nHPEaX9iQ@mail.gmail.com>
Message-ID: <CAL_JsqLGVBjiYt5tG0GFxxeHmNDD1PgJx3ab-n2x0nHPEaX9iQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/8] dt-bindings: ufs: qcom: Add SC7180 compatible string
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: David Wronek <davidwronek@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-phy@lists.infradead.org, ~postmarketos/upstreaming@lists.sr.ht, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_101208_627858_96CED41E 
X-CRM114-Status: GOOD (  19.18  )
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

T24gVHVlLCBGZWIgMTMsIDIwMjQgYXQgNDozMOKAr0FNIERtaXRyeSBCYXJ5c2hrb3YKPGRtaXRy
eS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIDEzIEZlYiAyMDI0IGF0
IDAwOjIyLCBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBT
dW4sIEphbiAyMSwgMjAyNCBhdCAwNTo1Nzo0MlBNICswMTAwLCBEYXZpZCBXcm9uZWsgd3JvdGU6
Cj4gPiA+IERvY3VtZW50IHRoZSBjb21wYXRpYmxlIGZvciB0aGUgVUZTIGZvdW5kIG9uIFNDNzE4
MC4KPiA+ID4KPiA+ID4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRv
Zi5rb3psb3dza2lAbGluYXJvLm9yZz4KPiA+ID4gU2lnbmVkLW9mZi1ieTogRGF2aWQgV3JvbmVr
IDxkYXZpZHdyb25la0BnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHVmcy55YW1sIHwgMiArKwo+ID4gPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IFNob3VsZCBoYXZlIGJlZW4gcGlja2Vk
IHVwIGJ5IFNDU0kvVUZTIG1haW50YWluZXJzLCBidXQgaXQKPiA+IGhhc24ndCwgc28gSSBhcHBs
aWVkIGl0Lgo+Cj4gQW5kIGl0IG5vdyB0cmlnZ2VycyBzY2hlbWEgd2FybmluZ3MsIGJlY2F1c2Ug
c2M3MTgwLXVmc2hjIGhhcyA3IGNsb2Nrcwo+IGFuZCAxIHJlZyBlbnRyaWVzLgoKQW5kIG5vdyBk
cm9wcGVkLi4uIFBlcmhhcHMgdGhlIGR0cyBjaGFuZ2VzIHNob3VsZCBiZSB0b28uCgpNYXliZSBR
Q29tIG1haW50YWluZXJzIHNob3VsZCByZXF1aXJlIGEgcmVwb3J0IG9mIGR0YnNfY2hlY2sgb24g
bmV3CmJvYXJkcy4gTXkgY29tcGFyaXNvbnMgb2YgTGludXMgdnMuIG5leHQgd2FybmluZ3Mgb2Z0
ZW4gc2hvdyBhbgppbmNyZWFzZSBpbiBRQ29tIHdhcm5pbmdzLiBMaWtlIHJpZ2h0IG5vdzoKCmxp
bnVzOiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb206MTk5MDoyNjUKbmV4dDogYXJjaC9hcm02NC9i
b290L2R0cy9xY29tOjE2MTA6Mjk4CgpGaXJzdCBudW1iZXIgaXMgdG90YWwgd2FybmluZ3MuIFNl
Y29uZCBudW1iZXIgaXMgdW5pcXVlIHdhcm5pbmdzCihzdHJpcHBpbmcgZHRiIG5hbWUpLiBTb21l
IG9mIHRoaXMgaXMganVzdCBtaXNtYXRjaCBiZXR3ZWVuIHNjaGVtYXMKYW5kIGR0cyBjaGFuZ2Vz
IHNob3dpbmcgdXAgaW4gbmV4dCwgYnV0IGl0IGRvZXNuJ3QgdGVuZCB0byBnbyB0byAwIGFzCnRo
ZSBtZXJnZSB3aW5kb3cgYXBwcm9hY2hlcy4gSSd2ZSBzZWVuIHRoaXMgc2V2ZXJhbCBjeWNsZXMu
IEFsbCB0aGUKZGF0YSBpcyBhdmFpbGFibGUgZnJvbSBteSBDSSBqb2JzLCBhbmQgSSByZWd1bGFy
bHkgbG9vayBhdCB0aGUgZGlmZgp3aXRoIHRoaXM6CgokIGxlc3Mgfi9iaW4vZ2wtZGlmZi1kdGIt
d2FybmluZ3MKIyEvYmluL3NoCgpbIC16ICIkMSIgXSAmJiB7IGVjaG8gIk1pc3NpbmcgYXJjaCEi
OyBleGl0IDE7IH0KCmFyY2g9IiQxIgoKam9iPSJqb2ItZHRicy1jaGVjayIKbG9nZmlsZT0icGxh
dGZvcm0td2FybmluZ3MubG9nIgoKIyB1cmwgPGJyYW5jaD4gPGFyY2g+CnVybCgpIHsKICAgICAg
ICBsb2NhbCBicmFuY2g9IiQxIgogICAgICAgIGxvY2FsIGFyY2g9IiQyIgogICAgICAgIGVjaG8g
Imh0dHBzOi8vZ2l0bGFiLmNvbS9yb2JoZXJyaW5nL2xpbnV4LWR0Ly0vam9icy9hcnRpZmFjdHMv
JHticmFuY2h9L3Jhdy8ke2xvZ2ZpbGV9P2pvYj0ke2pvYn0lM0ErJTVCJHthcmNofSU1RCIKCn0K
CmN1cmwgLUxzIC1vIG9yaWcubG9nICQodXJsIGxpbnVzICR7YXJjaH0pCmN1cmwgLUxzIC1vIG5l
eHQubG9nICQodXJsIG5leHQgJHthcmNofSkKbWVsZCBvcmlnLmxvZyBuZXh0LmxvZwoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
