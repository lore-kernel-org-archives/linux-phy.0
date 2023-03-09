Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F995C64EC4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 09:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AgCD6cBC0nvOdvUy3NVI/vbihaPpjI+LWbIAuo/65Hk=; b=RYD2B1O2Ki8nPH
	nBXy7VWZ8gDWBRb0WsQXjtcxrnqzm45QoLHxQYSadYrRBcSu9Lf9ZuRKmfrJn9uMX4eAtB7nWhbrD
	8y/fH3+RKHmXWtvOelhU8xk+4GxmT1PE5iwXXXzeLENJVVWCspB2fES0SHpj87+/MDKvF2dwIBrlf
	EfAXdXD/Z42cVFnxoRu1Yh1it09tVuAdmFXiW/4zKZb0aoZfYe3/HDNFF8LlGyFuDpMYPI+jyD0qX
	sIvzpDGHBcCcxL5ihk0Ct/byyI0P4AXi3ty9gOSajeAVix3ao91SGpi2M/lkKpXY0GocuKyr9gYUK
	NRUyTxyaPpY63vfYDF3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paCOC-008kGa-SO; Thu, 09 Mar 2023 09:16:44 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paCNy-008kAk-5L
	for linux-phy@lists.infradead.org; Thu, 09 Mar 2023 09:16:31 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-536be69eadfso23750397b3.1
        for <linux-phy@lists.infradead.org>; Thu, 09 Mar 2023 01:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678353388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O4oOjO1iZqHHqppZpeEVZpEKQdPcmPUQRfadcX5/5t0=;
        b=l62t2ivlUxilMsIapwCQyovxHKcjFK0D4LIQAKwW2mD7FsZY4aDwDtSxJ7m/K8NmKU
         AJdQyIoT9ZWXji9+bD5ZurYVNpOiHzkB+kyAceWN/C+vqyHBsqWxFBIz0gIcXEU26XYP
         bGq+xR7SNxzStcFc98oMENNMTFUqLRv00f4ca3YRP9hrFQ5iiAGTyWbVDmTPcBjDcaLh
         IlfoxCyIw1UDxoTylhClVL/Kg3AcCk5cE9JmnflkYohAdEeI3uKYp9tbvftu+zZg/O4l
         GFOJ7buxjOQ4QXp7E5LpS0pj8Nl26YP6QkXVQFvGPTiT3bw4KmkTs3rpR4wxRJBlc8UZ
         KlQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678353388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O4oOjO1iZqHHqppZpeEVZpEKQdPcmPUQRfadcX5/5t0=;
        b=z0GsFzYU29qWPUqi6foBoRXCin02aX/gaS79bTbi66jtU/d2o4s3CrveYZBcSHCVWT
         UCHob6g15GYF1ogqxSMaLZCQ2KnbjxRTgMmDDF6lZ/eJic/65w2F9AD8czjR9vPwaw2Y
         zi+UQLK7w6rEcmAdkrvY1vLpwNS4EsECAv0Yf7L0ejYZR4VrorC3tbyUgOuO9pUSwoXH
         FDJxeKk89O3I5wz2/z9Dv+UpKii0agUV1AqaLjxez+TDYbwTrPgGFe1ZqeW500clXIhH
         7/eBS4ZIalU9Xe8lBFb9XQt0uTjLGa68pUbswZxhgrL7SpqYau8TdQwV8aP5nXs750aR
         aRjQ==
X-Gm-Message-State: AO0yUKXWn+sZFVaYUlHWtq4+1e5OGYZk2xXz3j6Rxqu4h23xkSKCsbaK
	A8yjMX4KufshsZrUDLZCarCMxfZVFsAbWvS+43ZHww==
X-Google-Smtp-Source: AK7set/xO9yLZW6FEwts8sv8BrRfJLxSKPDPCskVFgtuZJ0c4xCwq7UwoYUvM1OKfG5y166F1nne9p8uWnZAcO2Kp/8=
X-Received: by 2002:a81:4312:0:b0:52e:b718:24d5 with SMTP id
 q18-20020a814312000000b0052eb71824d5mr13578418ywa.9.1678353387956; Thu, 09
 Mar 2023 01:16:27 -0800 (PST)
MIME-Version: 1.0
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-4-sean.anderson@seco.com> <4c039e53-e3ca-29d7-e5ea-f24e385d28b0@linaro.org>
 <42ccbac0-53e2-f599-fb3d-064b896bde4a@seco.com>
In-Reply-To: <42ccbac0-53e2-f599-fb3d-064b896bde4a@seco.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 9 Mar 2023 10:16:16 +0100
Message-ID: <CACRpkdaj-0dyqWdSbQbjyUed+khDLi-awgan1BnuDvuY2JBzFQ@mail.gmail.com>
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
To: Sean Anderson <sean.anderson@seco.com>, Niall Leonard <nl250060@ncr.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
	Madalin Bucur <madalin.bucur@nxp.com>, linuxppc-dev@lists.ozlabs.org, 
	devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>, 
	Rob Herring <robh+dt@kernel.org>, Camelia Alexandra Groza <camelia.groza@nxp.com>, 
	linux-arm-kernel@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>, 
	Jonas Gorski <jonas.gorski@gmail.com>, linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_011630_264465_1605BBBC 
X-CRM114-Status: GOOD (  11.28  )
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

T24gVHVlLCBNYXIgNywgMjAyMyBhdCA0OjM14oCvUE0gU2VhbiBBbmRlcnNvbiA8c2Vhbi5hbmRl
cnNvbkBzZWNvLmNvbT4gd3JvdGU6Cj4gT24gMy83LzIzIDAzOjQyLCBLcnp5c3p0b2YgS296bG93
c2tpIHdyb3RlOgoKPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMDEyNi1ncGlv
LW1taW8tZml4LXYyLTEtMzgzOTdhYWNlMzQwQG5jci5jb20vCj4KPiBUaGFua3MgZm9yIGxpbmtp
bmcgdG8gdGhhdC4KPgo+IEkgYmVsaWV2ZSB0aGlzIHBhdGNoIHNob3VsZCBiZSBhcHBsaWVkIGlu
c3RlYWQgb2YgdGhhdCBvbmUgYmVjYXVzZQo+Cj4gLSBJdCBkb2N1bWVudHMgYWxsIHRoZSByZWdp
c3RlcnMsIHdoaWNoIHdlcmUgcHJldmlvdXNseSBvbmx5IGRvY3VtZW50ZWQKPiAgIGluIHRoZSBk
cml2ZXIKPiAtIEl0IGhhbmRsZXMgdGhlIGVuZGlhbm5lc3MgcHJvcGVydGllcy4KPiAtIEl0IGNv
bnNvbGlkYXRlcyB0aGUgdmFyaW91cyBkZXNjcmlwdGlvbnMgb2YgdGhpcyBiaW5kaW5nIGludG8g
b25lCj4gICBzY2hlbWEuCgpOaWFsbCBhcmUgeW91IHNlbmRpbmcgYSB2MyBvZiB0aGlzIHBhdGNo
IHNvb24/CkluY2x1ZGUgU2VhbiBvbiB0aGUgcmV2aWV3ZXIgbGlzdCEKCllvdXJzLApMaW51cyBX
YWxsZWlqCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
