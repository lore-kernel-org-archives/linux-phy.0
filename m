Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E872C4321E
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 10:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFeFrv72Kf1DpXHKUEBHz9rVvyXmEKCnGKaZx5H9z2k=; b=uYOCas8iTyyKsG
	0CIUd3gdCK/BEG0lTuOUlygXuj3R5p8M3k94cwWKg33dfX3p9uIyE2ihcW+GG2QPj83mREfDx1GuX
	WHGywpygkJ8Hb/4Ehse84BPKsRN/ZhYuRAmVNzfiozNYlIiELgtxz6E1IUKoZVwIJHQTuf4j+GaVp
	ZSgT3zux/UYxETRMPll0TWmcB1nC54FQeCg1a2elyUG4O0Adlr+2024vVixmFloSAGzwd5gKH9N0D
	BVg1XtOcRZoiJRcHeh8/+pM/+6GnBJd8sS++rwluPHIp3QjBhivUnGVevpUB2jbbO5NjimvIPU5ql
	BQszR5T39EE1mRaH77yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy9EN-007Whb-Nu; Thu, 24 Nov 2022 10:13:19 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy9EK-007Wer-RE
	for linux-phy@lists.infradead.org; Thu, 24 Nov 2022 10:13:18 +0000
Received: by mail-pj1-x102f.google.com with SMTP id e7-20020a17090a77c700b00216928a3917so4710231pjs.4
        for <linux-phy@lists.infradead.org>; Thu, 24 Nov 2022 02:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k2dr7Cgu4oJVGxGU1Y/2qFukYAZmH/+X4Fm9CRZLrY8=;
        b=P9EOPeyXPx8GBJUYiq9uOyAn/qCWcWTGvL6Wha5DJLhTpCMmeXU8Qwr+VvfGYTryoM
         0tUJDO5CfhLJ3URozTuKhk7INuvCw7+W74GbRlWy9SKKytlYp1sb0F9FzanRATTnkLyI
         Yp53dXTE6HyC/L2c3UhFnhXXKUJiwP6/FINdzAf/0o9w+IoX9bJ90qSXgmlvZfhnPisN
         FT8feH4EmP3pVlGqPUb2mgQRozoam3WpwGfb/nF/hr/ChS15K5bu0nbnkazVjdyLWhi8
         Dv3WpK4QujOTOytec+yPzPzU14p2UnmmkE1JqnPzOVjjKDxWlvtvlKS79H2QlaSxb2b5
         yOKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k2dr7Cgu4oJVGxGU1Y/2qFukYAZmH/+X4Fm9CRZLrY8=;
        b=SC79G8goJn+rgr8yrqx5aGxYaO92eNKvAYs4xGiDs0EX6wl7n2lQ40a9hIyh2NghFF
         1Kt11Mwq58S0Mydj9MQtbyi5mKcXYKRXPTHEfredO5yoMFd2osIDXaVAkZVYDRDKSy0e
         XWGUCC0noMVZoJAUrF+n5Ey++smBlYtKQrPHcuuZsMAin/7NzgM/n2Ff9HXLPMMfRBZV
         dEkpOGUY/GhIVU23SVdOBUmL1YdwVfJ7827duUpdpjgV5D/4ajudcIvL+2JTjafCiCzT
         ZyEMoAuEBjlxzap+zCKyVS24LTjOjxUBbqrOSukV6tpi9y/jehA4elXEaACMM6sYSOFI
         jyCA==
X-Gm-Message-State: ANoB5pk5JCzmm7sxl0eMChpMw3CN1MIz3//TrzGGamux3PAuQ44TAErM
	L0GQu1jwvualIuh79sg0fJ4t
X-Google-Smtp-Source: AA0mqf4t6fAJ8A/JX49OHFGtob0Y2bkzouwdtsvSrPv9mEsKtqsl4IbjvZwzfzqw9F0zT26bCyhhsw==
X-Received: by 2002:a17:90b:f04:b0:218:8ec2:a4e2 with SMTP id br4-20020a17090b0f0400b002188ec2a4e2mr27805083pjb.174.1669284796009;
        Thu, 24 Nov 2022 02:13:16 -0800 (PST)
Received: from thinkpad ([59.92.97.13])
        by smtp.gmail.com with ESMTPSA id pl18-20020a17090b269200b00218f830c63esm842600pjb.1.2022.11.24.02.13.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Nov 2022 02:13:14 -0800 (PST)
Date: Thu, 24 Nov 2022 15:43:09 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Eric Biggers <ebiggers@kernel.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org, ahalaney@redhat.com,
	abel.vesa@linaro.org
Subject: Re: [PATCH v3 20/20] MAINTAINERS: Add myself as the maintainer for
 Qcom UFS driver
Message-ID: <20221124101309.GE5119@thinkpad>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
 <20221123074826.95369-21-manivannan.sadhasivam@linaro.org>
 <Y35nBIIRmu3w9C1C@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y35nBIIRmu3w9C1C@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_021316_946331_0E326C2A 
X-CRM114-Status: GOOD (  16.71  )
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

T24gV2VkLCBOb3YgMjMsIDIwMjIgYXQgMDY6MzE6MzJQTSArMDAwMCwgRXJpYyBCaWdnZXJzIHdy
b3RlOgo+IE9uIFdlZCwgTm92IDIzLCAyMDIyIGF0IDAxOjE4OjI2UE0gKzA1MzAsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+IFFjb20gVUZTIGRyaXZlciBoYXMgYmVlbiBsZWZ0IHVu
LW1haW50YWluZWQgdGlsbCBub3cuIEknZCBsaWtlIHRvIHN0ZXAKPiA+IHVwIHRvIG1haW50YWlu
IHRoZSBkcml2ZXIgYW5kIGl0cyBiaW5kaW5nLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYW5p
dmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+ID4g
LS0tCj4gPiAgTUFJTlRBSU5FUlMgfCA4ICsrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJ
TkVSUwo+ID4gaW5kZXggY2YwZjE4NTAyMzcyLi4xNDlmZDZkYWY1MmIgMTAwNjQ0Cj4gPiAtLS0g
YS9NQUlOVEFJTkVSUwo+ID4gKysrIGIvTUFJTlRBSU5FUlMKPiA+IEBAIC0yMTA5Nyw2ICsyMTA5
NywxNCBAQCBMOglsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQg
Zm9yIG5vbi1zdWJzY3JpYmVycykKPiA+ICBTOglNYWludGFpbmVkCj4gPiAgRjoJZHJpdmVycy91
ZnMvaG9zdC91ZnMtbWVkaWF0ZWsqCj4gPiAgCj4gPiArVU5JVkVSU0FMIEZMQVNIIFNUT1JBR0Ug
SE9TVCBDT05UUk9MTEVSIERSSVZFUiBRVUFMQ09NTSBIT09LUwo+ID4gK006CU1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gPiArTDoJbGlu
dXgtYXJtLW1zbUB2Z2VyLmtlcm5lbC5vcmcKPiA+ICtMOglsaW51eC1zY3NpQHZnZXIua2VybmVs
Lm9yZwo+ID4gK1M6CU1haW50YWluZWQKPiA+ICtGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwKPiA+ICtGOglkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1x
Y29tLmMKPiAKPiBUaGFua3MgZm9yIHZvbHVudGVlcmluZyB0byBtYWludGFpbiB0aGlzIGRyaXZl
ciEKPiAKPiBXaGF0IGFib3V0IHVmcy1xY29tLmggYW5kIHVmcy1xY29tLWljZS5jPyAgVGhvc2Ug
YXJlIHBhcnQgb2YgdGhpcyBkcml2ZXIgdG9vLgo+IAo+IFRoZSBwYXR0ZXJuIGRyaXZlcnMvdWZz
L2hvc3QvdWZzLXFjb20qIHdvdWxkIGNvdmVyIGFsbCB0aGVzZSBmaWxlcy4KPiAKClNvcnJ5LCBm
b3Jnb3QgdGhlIHdpbGRjYXJkISBXaWxsIGZpeCBpdCBpbiBuZXh0IHJldmlzaW9uLgoKVGhhbmtz
LApNYW5pCgo+IC0gRXJpYwoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
