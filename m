Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50027C77B61
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 04:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5x03RZPiu05AhUkTRxH9hs3K+Zl0rWmAt0NSwzG1j8=; b=Wnc3k8SyjK7/yG
	cyrgv6VMyqUr9imoIGNsAkW8XF30QeHehwWPmV29sShWyf5LhKtOJEHBnqkX+/IjjRaqMebt9K4Kd
	L36uky0BjdWxjg5hL/2PUG7wpAJdVP72Yq+wOkWXJnUgD6HovFw0J2/CtVMIS/21cUpKPZwlj8o9a
	q7LUQWvxOzpiLF+SsU//N/3zeMssATdizjBKYBxJ4MXaEg1rZUKjE6gnt427dSyCt3E6ZTgtF8VMi
	r+/nUnngf+Q0B0Ty99ORsJJ+xdP1717cP7+ZisCALpeHY0CY6Gq2B3rmA7tCIQPr7hlLoLrrK5sXt
	YYNxEg/4Om6eX5XdhREg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prAl4-000BhK-2q;
	Tue, 25 Apr 2023 04:58:30 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prAl2-000BgI-0H
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 04:58:29 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-504fce3d7fbso8059333a12.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Apr 2023 21:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google; t=1682398705; x=1684990705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b0Eu6RwlDMBI2VACTLVW3OyI+qTBgEnmFpIUv7kN7Xg=;
        b=f7goMULptLM/h4aCQSheJXz1NcaoQxEI6Y09Gh8UZTO77/S24BAPjTWfUCQvp4jqNX
         qaAnVant+f04AGkWz61s25P0VxS6cO0gxQSRz+l9tfT/E6rCBaxrTHC+EyAn8iCDtgKY
         cV30I4N67+Tl6b8aNJCy7WUOEt91S4PrhzlZ1sLAx6WKXGdVvBm4KuG0e0TY1Ut3gNj2
         R+jAy3FVLCXRZpzRCYtr06tBO4ZaVPmHAPQmTGZsxiiWpFWPMOmNsvokQBJoh044w5ig
         RPVeNSJf/y1LvkvIBPi003s3V8hIcycBahJjyKKt89NOrJ+OwMfFKYNeI5VJdefT7W+M
         5WVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682398705; x=1684990705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b0Eu6RwlDMBI2VACTLVW3OyI+qTBgEnmFpIUv7kN7Xg=;
        b=hU0upvMvdy0I+U9TckEknxPBPNGYZ4QoQ+SruvCCmQnlp+HNpRWM/EQuVgdqFeKLbQ
         5IQ/4j0/neNoWGjEwHpn3e9JP5bnaxNxBFC4iixksXwA1OYcBt+G49nJVhOpK3SAH0y0
         ByNSDr4JfWTtLHeueUlgUzlYH0gSPJBi+FXoRiJUWuHcDKNWpjIb7KMNUI9TsrkFQKHX
         n+KsB+NlZVlUyQeX1mDrybJqzj5DwttfaJg3BCscKFDuQD9s3hPX0q1GDMvqpwTLkTtW
         ZuLCze/yXWcrPBIb07kbpOIC4iFRkLYiXtzVAgRedTw7MoKVsshuM3HXQ+sx5R9xnDav
         ixMA==
X-Gm-Message-State: AAQBX9fDe6E53mhvAnn8NLzntCGgqhbZl1sY+mZc/qcJ4U4X1OwgbeS5
	+jcds0mB2yL962DQStlpxgyOQJM9uObwuEWOaEeYcQ==
X-Google-Smtp-Source: AKy350auphzv7gCr2o8Iiur9PYK2zIXYRVW6d8MJgcNm8GMQeGwmvI+FOwh/BdkzaQO41xURDxBCvys3dBu3FMP0kdw=
X-Received: by 2002:aa7:c916:0:b0:504:78aa:4f2d with SMTP id
 b22-20020aa7c916000000b0050478aa4f2dmr13658270edt.0.1682398705333; Mon, 24
 Apr 2023 21:58:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
In-Reply-To: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
From: Steev Klimaszewski <steev@kali.org>
Date: Mon, 24 Apr 2023 23:58:14 -0500
Message-ID: <CAKXuJqiL6_Mrh07HrBm6hMc3wZkW7vcfxR3_+h4_pY6hjMf2XQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] phy: qcom-qmp-combo: Support orientation switching
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Johan Hovold <johan@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_215828_142566_EE6AC6CE 
X-CRM114-Status: GOOD (  11.38  )
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

SGkgQmpvcm4sCgpPbiBNb24sIEFwciAyNCwgMjAyMyBhdCAxMDo0MOKAr1BNIEJqb3JuIEFuZGVy
c3Nvbgo8cXVpY19iam9yYW5kZUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIGFkZHMgc3Vw
cG9ydCBmb3IgVVNCIGFuZCBEaXNwbGF5UG9ydCBvcmllbnRhdGlvbiBzd2l0Y2hpbmcgdG8gdGhl
Cj4gUU1QIGNvbWJvIFBIWSwgYXMgd2VsbCBhcyB1cGRhdGluZyB0aGUgc2M4MjgweHAgZGV2aWNl
cyB0byBpbmNsdWRlIHRoZQo+IFFNUCBpbiB0aGUgU3VwZXJTcGVlZCBncmFwaC4KPgo+IEJqb3Ju
IEFuZGVyc3NvbiAoNyk6Cj4gICBkdC1iaW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhwLXFtcC11
c2I0M2RwOiBBZGQgcG9ydHMgYW5kCj4gICAgIG9yaWVudGF0aW9uLXN3aXRjaAo+ICAgcGh5OiBx
Y29tLXFtcC1jb21ibzogTW92ZSBwaHlfbXV0ZXggb3V0IG9mIGNvbV9pbml0L2V4aXQKPiAgIHBo
eTogcWNvbS1xbXAtY29tYm86IEludHJvZHVjZSBvcmllbnRhdGlvbiB2YXJpYWJsZQo+ICAgcGh5
OiBxY29tLXFtcC1jb21ibzogSW50cm9kdWNlIG9yaWVudGF0aW9uIHN3aXRjaGluZwo+ICAgcGh5
OiBxY29tLXFtcC1jb21ibzogSW50cm9kdWNlIGRybV9icmlkZ2UKPiAgIGFybTY0OiBkdHM6IHFj
b206IHNjODI4MHhwLWNyZDogQWRkIFFNUCB0byBTdXBlclNwZWVkIGdyYXBoCj4gICBhcm02NDog
ZHRzOiBxY29tOiBzYzgyODB4cC14MTNzOiBBZGQgUU1QIHRvIFN1cGVyU3BlZWQgZ3JhcGgKPgo+
ICAuLi4vcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjQzZHAtcGh5LnlhbWwgICAgfCAgNTEgKysr
Kwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M4MjgweHAtY3JkLmR0cyAgICAgfCAgMjgg
KystCj4gIC4uLi9xY29tL3NjODI4MHhwLWxlbm92by10aGlua3BhZC14MTNzLmR0cyAgICB8ICAy
OCArKy0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjODI4MHhwLmR0c2kgICAgICAgIHwg
IDM0ICsrKwo+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyAgICAg
fCAyMjcgKysrKysrKysrKysrKystLS0tCj4gIDUgZmlsZXMgY2hhbmdlZCwgMzA5IGluc2VydGlv
bnMoKyksIDU5IGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjM5LjIKPgpUaGFuayB5b3UhIEkgaGF2
ZSBiZWVuIGxvb2tpbmcgZm9yd2FyZCB0byB0aGlzIHBhdGNoc2V0IGZvciBhIHdoaWxlIDopCgpU
ZXN0ZWQgd2l0aCAwNWFjOjE0NjAgQXBwbGUsIEluYy4gRGlnaXRhbCBBViBNdWx0aXBvcnQgQWRh
cHRlciBhbmQKMDYzOTo3MjEwIENocm9udGVsLCBJbmMuIEJpbGxib2FyZCBhbmQgYm90aCB3b3Jr
IHdpdGggb3JpZW50YXRpb24Kc3dpdGNoaW5nLgoKVGVzdGVkLWJ5OiBTdGVldiBLbGltYXN6ZXdz
a2kgPHN0ZWV2QGthbGkub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
