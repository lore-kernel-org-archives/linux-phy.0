Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42A18CA5FED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 07:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQ7jv5EbGklNn/aU5e0eFJPvJRK9anpTcaL0+Ygh4k8=; b=Ug0q0yYdfI/yhZ
	dlqLjIyagLkfC/dxc+H7D+1UJ4FidIphZgoeQvUduwZUUHDSyCkd9KPPWIJegtVzA9WcPtiPg8HlP
	7rUDdB458lLyOmZQibppRPYD08oZHbnlAfKfpFRIiFqYVhWp2CaF7YebiraP/Ln3M6o3G0/jLmPId
	nm5WYujINYCFofFns8ZFSibKBemeRoxFJTYQEE6xfm1qj8Uqw4FVkAawZIl4ize2nL3FLj/gghwly
	fO5XfUn6rG5RPmZxid7YHyAlNmWzRk0bkO4cxxg0xYFVj/I4+O+oacTj/AGDhXHEAi+AeT8SGFdsP
	ZsyCZpUxi6XIISwbMJZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzuo-00000000DKr-2ixW;
	Tue, 06 Oct 2026 07:48:46 +0000
Received: from mail-ej2-x06.google.com ([2a00:1450:4864:34::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzul-00000000DIL-2u6t
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 07:48:44 +0000
Received: by mail-ej2-x06.google.com with SMTP id a640c23a62f3a-c2e61353ec3so72751466b.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 00:48:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791272922; cv=none;
        d=google.com; s=arc-20260327;
        b=DX2hJ5iEKzNtLDmyu5RlTr4qI0CGupi/+WpetPWBPylHa7ZmZr3BBhUVK5VZ0xcEFw
         q/0eYmtxars1KRP9lzHylFS++uMA+xKeQUcpH7aDgeO1mm7b66Jgcse40mARs3HBwIo8
         hqDhCqxQs097hkhvdgRaRoLqPanik0SPLQMHO0YQpU40QlpchYb6sTA48RMVMYegDrmv
         JcJMddtyUa+99TpuEuGqdoXuXG7tQviLqrIsxKhj2xjiphilrUldfSvz4cYN3Dbu5aif
         9BZxfuq/AUYCOyASMnarzY0aW/b3A3WtyuCn1tBy/M0YSqpTIH8olhlXWwlgu/xqmac3
         CFBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LIS7LQGXFKGRWwjzJfFhANm/+ELSmq9NRDYM4Ibfol0=;
        fh=r15jJFxmae7NiexbQcJ5Z3Hssj5j/an1WHQgEx/LrHI=;
        b=I+K7t0T52Gc8iJaUY6TFAwcwkuq7hty8apudS2HNkgz404gIH2GfaOPcHWb969+yNi
         MEKkqYSRmXNcGdZZPGhDSHmdDaUvXocFuwtcYHL1KxHjglmoEWFhHnmhKaZbhHYT9vYa
         zQCEtzK0bfXka2gPz9rPEiqRSQyLuxuCo12c4LCYwx/NxDzDdtI4VmXnjfRU60dS62aH
         ox9yxop8x/ri8UhizxuiAStjjxty+XFw/KiAkiPPaCg0LGqJAX3E7MWxGICFx2H5DST/
         1ypElBmummYAJGNECCNvbgCBiflMwLTRtPJxQQtWShkMgZ0nY1sK35IdsEtINHoHJBYi
         +FlQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791272922; x=1791877722; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LIS7LQGXFKGRWwjzJfFhANm/+ELSmq9NRDYM4Ibfol0=;
        b=nTjjfp6jnMaS0+/hdsaWSFeaHEMEWKDzxVNQ+m89g0YV8gbdwZB7t3T4nZ6vKeHGLo
         VdiJsDQac2J0uKgHMil3xXZVPsvOC5NjehoexUpsCu0Sv6zBAmQDduF7rC/qL9m/3Ao+
         yFKpAV20w/IjS94XShrFR7ViDn6Ml1SJjwAeQ+NfkBFCU+2g1L5LILQbUxoiK5kumPYI
         qF1xO/tt5kWiqG8n7tnOfe/TzMSQGXgsOnCIMlT7SJgFIHHgGrSiDx5kf670ZcFhJ3z4
         hEIKr/mseGtZzVum52WQIVmzvwoOkFgCx6I3p6mNdkN3YXgSd8vZ2rT4t7PbQhNC6bTc
         Zw0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791272922; x=1791877722;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LIS7LQGXFKGRWwjzJfFhANm/+ELSmq9NRDYM4Ibfol0=;
        b=h3YJp/IKSnL4qDpW9cnNJV37PY9Zu5V7Lki8VbPyQWys87R84GGTi88I91CfFr5sHi
         XEULraAC/YsUrGHOsN2sRwQk3nEeZMVRhdbAE/BOf+sd0o9CCKq1W+MKYdNF7ZY0VeZ5
         SHUCga9fxT2vh9+EsTEziQ5zaXZyreVR7usOAg5N94aDhyqQUNqkeWU71gRqOxkhTWSZ
         t1quk4P1B1h9ggT7mIMVi9toGl8Vdp8l1IiIA3o87fyvt4adnipvQA5BJ6z6hFqEUfQ6
         vD2FLnJ/bpgmwI+fPPAIjK051PCacRGq7C4/owlI2eGgXarLml51pYvw1ML30IUlwFfx
         nZLg==
X-Forwarded-Encrypted: i=1; AKwUvBxEdJ6iQl65a5M+JaNVBky+1DihoskyHxKN65dZVIHslC+d31xfP295vp7Bc6241uzrI927p3f7ibQ=@lists.infradead.org
X-Gm-Message-State: AFuF++lxngj40PgodF2N1niQ2wvqzI5SSsxKYTujqURUtGwW0+eFJPXs
	eTrxOhzEYSIPQ8f6JANQNJ7IrTQVYK6UAjsELOmYUFy1CsSURLTB6UN8jGlMYceWH9lu2+OYS7Q
	U7dVq0LOy24HR9gOjgCHu1HrU+nmjw48=
X-Gm-Gg: AYBFou0H2q/J86dTA61XcUknhWB6gUYlfyvwX0+RAd/ifgj+EX0d48l/QJECJrCBHUV
	YkFOWy5DVYhSQCW51WbjGw2KMGDZ9il1GQrVWmfNBXm3bx5zyBMA5VA3IkTizcQ/kovP+sFU3XK
	nZQRhXAufesdhj+izIvyE/ris+OwqR26p8IYnLHAEt/cs+XBQRQwU48vD9AKjWoSDiuzqzrL4sI
	rQExXs9BdVHOlU6lPVPQJhRunDGZy2VSo9VqgSV3fTYi2SxK2TDvU/d8eAAyGm7vJSVgkI+dwoR
	yj8Bod0bKzN6LQSxCfuE4Pc5m63HBER+6vHqn/aWwQjetqzWwg2llVk8dw==
X-Received: by 2002:a17:907:9405:b0:c2a:f360:1c67 with SMTP id
 a640c23a62f3a-c316a07eb4cmr65136466b.35.1791272920911; Tue, 06 Oct 2026
 00:48:40 -0700 (PDT)
MIME-Version: 1.0
References: <20261005225944.1171574-1-coiaprant@gmail.com> <20261006032710.GA3539706-robh@kernel.org>
In-Reply-To: <20261006032710.GA3539706-robh@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 6 Oct 2026 15:48:27 +0800
X-Gm-Features: AclHuK-_H5DMjjR501xY25PLqDQ4wPnk0DiXBT1PdwIvhQ2wQ01nPR-CgEl7PoQ
Message-ID: <CALj3r0hwkXBowh=vUbC9yPimkraMH1NJ3OmgBb0zp-z22ZFXvg@mail.gmail.com>
Subject: Re: [PATCH v11 0/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_004843_755228_8E2BB8FC 
X-CRM114-Status: GOOD (  12.72  )
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

Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6jCAx
MToyN+WGmemBk++8mgo+Cj4gT24gVHVlLCBPY3QgMDYsIDIwMjYgYXQgMDY6NTk6NDJBTSArMDgw
MCwgQ29pYSBQcmFudCB3cm90ZToKPiA+IENoYW5nZXMgc2luY2UgdjEwOgo+ID4KPiA+IC0gRHJv
cCB0aGUgdG9wLWxldmVsICJkZWZhdWx0OiAxIiBmb3IgInJvY2tjaGlwLHNnbWlpLW1hYy1zZWwi
Lgo+ID4gICBkdHNjaGVtYSBpbmplY3RzIHRvcC1sZXZlbCBkZWZhdWx0cyBpbnRvIGV2ZXJ5IG1h
dGNoaW5nIG5vZGUsIGFuZCB0aGUKPiA+ICAgaW5qZWN0ZWQgdmFsdWUgY29uZmxpY3RzIHdpdGgg
dGhlICJlbHNlIiBicmFuY2ggdGhhdCBmb3JiaWRzIHRoZQo+ID4gICBwcm9wZXJ0eSBvbiBub24t
UkszNTY4IHZhcmlhbnRzLCBicmVha2luZyBkdGJzX2NoZWNrIG9uIHRob3NlCj4gPiAgIHBsYXRm
b3Jtcy4gVGhlIGRyaXZlciBhbHJlYWR5IHRyZWF0cyBhbiBhYnNlbnQgcHJvcGVydHkgYXMgMSAo
R01BQzEpLAo+ID4gICBzbyBiZWhhdmlvciBpcyB1bmNoYW5nZWQuCj4KPiBXaGF0PyBUaGF0J3Mg
bm90IHJpZ2h0LiAnZGVmYXVsdCcgaGFzIG5vIGVmZmVjdCBvbiB0aGUgdmFsaWRhdGlvbi4KPiBQ
bGVhc2UgYWRkIGl0IGJhY2suIElmIHRoZSBwcm9wZXJ0eSBkb2Vzbid0IGFwcGx5IHRvIHNvbWUg
dmFyaWFudCwgdGhlbgo+IGRlZmF1bHQgZG9lc24ndCBtYXR0ZXIuCj4KPiBSb2IKCkhpIFJvYiwK
ClRoYW5rcyBmb3IgdGhlIGNvcnJlY3Rpb24uIFlvdSdyZSByaWdodCwgJ2RlZmF1bHQnIGhhcyBu
byBlZmZlY3Qgb24KdmFsaWRhdGlvbi4gSSdsbCBhZGQgaXQgYmFjayBhbmQgc2VuZCBhIHYxMiBy
aWdodCBhd2F5LgoKU29ycnkgZm9yIHRoZSBub2lzZS4KCkNvaWEKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
