Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7876BC44507
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 20:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiepALkNa2QObiNH7d7opY/iO14Adb8dcRSCpT0+Rk4=; b=u58Aen0dxcATqp
	ioVkG3ixBsvFc/cZtf95zeXV/JjcFxfjrqzcYmQ913SP4NoEbP5REGLrBV89YKaH9sAnmheZ+uo/z
	BhggyBU2p7cUGlOwCTnHfnv9VTPTq+MtoOiyY6IV/nWnGwpuWOc029dXBiS4XNXQ4Pieu0srRt7eb
	k0TmiE7gbCdbGgkMMWtU+z7CIq3jtI7XrpS56TuI2zuc+Gw78ZopdIlWJ94DS/eXLIWfsjwxRg5zg
	cK1aJzyOaUggaEsPMAyBwwbzc6F100Kkxc0zBzntElPFj//7npjqIsxnfdmBKXc3pkNMEaI6TGxk4
	POgEg4Cn4OiGB54Swdag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5vG-0000000FrF8-0c2O;
	Wed, 15 Jul 2026 20:09:38 +0000
Received: from mail-ej2-x02.google.com ([2a00:1450:4864:34::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5vD-0000000FrEV-25w1
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 20:09:36 +0000
Received: by mail-ej2-x02.google.com with SMTP id a640c23a62f3a-c15e9a2f51aso136693266b.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 13:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784146173; cv=none;
        d=google.com; s=arc-20260327;
        b=HeEgq5Hhxq7kPZFcQm3Rx9s/9dAMLH0dWz5gMB07sdFzQ2A8iMF0FzmyFPsEdKuUZq
         98gq2uiA345UaXBhDeCp4Tudz3ygbx+KVnfX12DitPWbFlsFdGcDe8AuNsF17LSnjrnk
         iuX25F/HZvdsz0+xYhnCfb8VeeWKwziMW7VcJfQM9Fv+W+YHD6GBlPt3DaSVCToU+6lG
         2CLd07RyqMmUKmTjaFyj/hCtZR2Q6XerS7rXXenR+Xz6Y6qd/9f4hy0kssl6SYI4A49T
         dGaEIU1QKNa51w4kbn50kOAGPH0DPNm7tEqAlLp+vIMRcLnLvdbf/JW+VaeRI/ZRyOjg
         kfng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zukIYuuCALMdyDk2rEuWfswlsQCB9YpIGZVHtbRJrWk=;
        fh=8hpQdoB9plvAW5c1BY59IukXpxnNqrrp1wqwNqKD18A=;
        b=PrWBm3gMLNZ7FG82Vax3w6u7KPivYvxnW9L0n/EnHf1QqF9QvtJmSwxpj1LdPT3KR8
         FnUaitI73WWw7JHBQYPToY2udsJQKtmpw24bKxg1Gp/gLOZTSUxgz89S6VmxQqtW7F4+
         UVXuSZ0Y2PRnCkTRM7o1pA+nqMnx6tM4rt2wzmdjiY13GBPk+YQrXTeD6SiYDyr3zDje
         P1fLbWkXpAcD+NPj2/ifc9NZ5xKqjjLxa0At1lm1wVcqr53ezVge3J77SpQ0V1kLFERX
         F+IfAS6wrLjVMslVamrTSh60YUf4sXIWv1k4kWSbaU2cyT7KSgxgWa6drMPF7tNa7XIS
         csxg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784146173; x=1784750973; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zukIYuuCALMdyDk2rEuWfswlsQCB9YpIGZVHtbRJrWk=;
        b=KILl0ADqOBHwcDjudo6BJDUW5RO37yDVenh1+muXZKklZ64teV5VRAh/IrAKsAdYRP
         dpwwmAJM+Gw4Yety7B/yxKjQgk9ucpf+6V/SjGh3NmI4YZ9hQHoDOcX/58fwFOJFa7vg
         lkBgPQm7rz8VxyIlh4byz24UAiCIJxyEsZTJSfz1pcRUaVSmVwVYCSDhG8mbU4dhLYZj
         QqvZyOYPt0FrttS41GQi0pUC/fIVk7wd1xmPXLCgRoSU5AnfO43j1vDMVB7/I9QI0X81
         VHkEB8Ytw16v1CjVc8EibuaoRcohCCFNgcqp8j/5yxgKsBqCikAKns9G70uFyhS3cPHv
         CSbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784146173; x=1784750973;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zukIYuuCALMdyDk2rEuWfswlsQCB9YpIGZVHtbRJrWk=;
        b=CTFvYlfwW5AZtZSlyrK7HRa/Y5T44fy+ej7AtGFcR1cKdRrnKYN1kefs6o+wGIGtRW
         jGUvNmwSFQxy0jEkHZ+ciJJwg/LrHkZbG+oJBavvO/iY685d+qxs1yAU8aIcPbdITB6Z
         IjizspU6xZm67tvP1p9OJpwUqTGOtYvHU3bqATD68uic2AOsZFGXY8l18baeJX0LMWc5
         fZh0vAdccDNcyTo9XqT4RbKFLfS6eH6UpLOVVyb82gLK10PFeYEKtX+/Q1Q+CIqh/I5t
         tt5dTidh7nX93z/eOwp2uvu30EF7Ik7Hh+qzwKqfxNPKY30aPXnBXiae6vK6niFEv14a
         W+qw==
X-Forwarded-Encrypted: i=1; AHgh+Rr6bVpxh4YX/S4Y4u4G5Dh8HR7Q13oH094v54Y4G3h6xfYuCP6eaP0UuhHGFK3d2dH27J4+msvhG/E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0hgJ47ogETjPVJs2nqbwTGEWMO/UXT1NaYDh4CSeO3t1lG+b2
	MNKYrYi5POsianed3BjwIxwVolZll+E7e3VWCb7y3VFjBxxnGTP4oeQaam8y4iU4+x5iS8IuKzI
	gCnb+uT6WMTs/yEiporgbAAYVmPjMkB4=
X-Gm-Gg: AfdE7clyb/w/YIj9Cgt+m/S6vTL63wNWA5nA0EGWljXG09+KcZvfmBg1EZKCfoLdktf
	PrUbjKDR9zTeV1dK1whtjhcW390VYe0csVQ5Xi177kTz9ABAiHyZLMZ78iiklx4ZAw/Sb7TZVV9
	UvuuBNHJbOvdIr5bbTao+V3nGWfrAx9yiCrTJlehZHfJ6B1lcCfPeXR9wfo8gqydJmZG32HlWy5
	o9xurGdF4EHKC1zbNKG3lqh7/dX5nNu9SzmEnQNIB5M6ANJ8ydKxg3wWz6Q/unaEtxmw8JmaFo=
X-Received: by 2002:a17:907:a785:b0:c12:9285:8f0f with SMTP id
 a640c23a62f3a-c161e93cebamr1058312866b.15.1784146172643; Wed, 15 Jul 2026
 13:09:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-6-coiaprant@gmail.com>
 <20260715191452.4A4821F00A3F@smtp.kernel.org>
In-Reply-To: <20260715191452.4A4821F00A3F@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 04:09:21 +0800
X-Gm-Features: AUfX_mwA1bFOnihfrZJfgB4Or9T0LdiVICJLS_d3L7PnHRbxyoxVmIpr7vZMqGg
Message-ID: <CALj3r0gZcEWONH_TkLGagyG7JqR9CkqMT5ucxsEYD3kw4xErBQ@mail.gmail.com>
Subject: Re: [RFC PATCH 05/10] arm64: dts: rockchip: rk3568: add XPCS and
 fixed-clock nodes
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, 
	linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, 
	conor+dt@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_130935_563539_DBE596C3 
X-CRM114-Status: GOOD (  19.29  )
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

VGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKPiBbU2V2ZXJpdHk6IExvd10KPiBUaGUgY29tbWl0IG1l
c3NhZ2Ugc3RhdGVzIHRoZXNlIGNsb2NrcyBhcmUgdXNlZCBhcyBhc3NpZ25lZC1jbG9jay1wYXJl
bnRzCj4gZm9yIHRoZSByZXNwZWN0aXZlIEdNQUMgbm9kZXMsIGJ1dCB0aGUgcGF0Y2ggZG9lc24n
dCBhcHBlYXIgdG8gYWRkIHRoZQo+IGFzc2lnbmVkLWNsb2NrLXBhcmVudHMgcHJvcGVydGllcyB0
byB0aGUgZ21hYzAgb3IgZ21hYzEgbm9kZXMuIEFyZSB0aGVzZQo+IGFzc2lnbm1lbnRzIG1pc3Np
bmc/CgpUaGUgYGFzc2lnbmVkLWNsb2NrLXBhcmVudHNgIGFzc2lnbm1lbnRzIGFyZSBub3QgYWRk
ZWQgaW4gdGhlIFNvQy1sZXZlbApgcmszNTY4LmR0c2lgIGJlY2F1c2UgZG9pbmcgc28gd291bGQg
YnJlYWsgZXhpc3RpbmcgYm9hcmRzIHRoYXQgdXNlClJHTUlJIG1vZGUuIFRoZSBjbG9jayBwYXJl
bnQgZm9yIEdNQUMwLzEgaXMgY3VycmVudGx5IGhhcmRjb2RlZCB0byB0aGUKUkdNSUkgY2xvY2sg
cGF0aCBpbiB0aGUgbWFpbmxpbmUgZGV2aWNlIHRyZWUuCgpJbnN0ZWFkLCB0aGUgYGFzc2lnbmVk
LWNsb2NrLXBhcmVudHNgIGFyZSBhcHBsaWVkIGF0IHRoZSBib2FyZCBsZXZlbC4KVGhpcyBpcyBh
bHJlYWR5IGRvbmUgaW4gUGF0Y2ggOSBvZiB0aGlzIHNlcmllcyBmb3IgdGhlIFBob3RvbmljYXQg
Ym9hcmQ6CgogICAgJmdtYWMwIHsKICAgICAgICBhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBTQ0xL
X0dNQUMwX1JYX1RYPjsKICAgICAgICBhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZ4cGNzX2dt
YWMwX2Nsaz47CiAgICAgICAgLi4uCiAgICB9OwoKU28gdGhlIGFzc2lnbm1lbnRzIGV4aXN0LCBi
dXQgaW4gdGhlIGJvYXJkIERUUyByYXRoZXIgdGhhbiB0aGUgU29DIERUU0kuCgo+IFtTZXZlcml0
eTogTG93XQo+IFNob3VsZCB0aGlzIGludGVybmFsIFNvQyBjbG9jayBiZSBtb2RlbGVkIGFzIGEg
Y2xvY2sgcHJvdmlkZXIgZnJvbSB0aGUKPiBnZW5lcmF0aW5nIFhQQ1MgSVAgbm9kZSB1c2luZyAj
Y2xvY2stY2VsbHMsIHJhdGhlciB0aGFuIHVzaW5nIGEgZHVtbXkKPiBmaXhlZC1jbG9jaz8KClRo
ZSBYUENTIGJsb2NrIGRvZXMgbm90IGhhdmUgYSBjbG9jayBjb250cm9sbGVyIGludGVyZmFjZS4g
SXQgc2ltcGx5Cm91dHB1dHMgYSBmaXhlZCAxMjVNSHogY2xvY2sgZm9yIHRoZSBHTUFDIHdoZW4g
b3BlcmF0aW5nIGluIFNHTUlJIG1vZGUuClRoZXJlIGlzIG5vIHJlZ2lzdGVyIGludGVyZmFjZSB0
byBjb250cm9sIG9yIGNvbmZpZ3VyZSB0aGlzIGNsb2NrIOKAlCBpdAppcyBhIGZpeGVkLXJhdGUg
b3V0cHV0IGZyb20gdGhlIFBDUyBoYXJkd2FyZS4KClVzaW5nIGBmaXhlZC1jbG9ja2AgaXMgdGhl
cmVmb3JlIHRoZSBjb3JyZWN0IGFuZCBhY2N1cmF0ZSByZXByZXNlbnRhdGlvbgpvZiB0aGUgaGFy
ZHdhcmUuIFRoZSBYUENTIGlzIG5vdCBhIGNsb2NrIGNvbnRyb2xsZXIsIHNvIGl0IHNob3VsZCBu
b3QKYmUgbW9kZWxlZCBhcyBvbmUuCgo+IEFkZGl0aW9uYWxseSwgdGhlIGNvbW1pdCBtZXNzYWdl
IHN0YXRlcyAiQWxsIG5vZGVzIGFyZSBsZWZ0IGRpc2FibGVkIGJ5Cj4gZGVmYXVsdCIsIGJ1dCB0
aGlzIG5vZGUgaXMgbWlzc2luZyB0aGUgc3RhdHVzID0gImRpc2FibGVkIiBwcm9wZXJ0eS4gV2ls
bAo+IHRoaXMgbGVhdmUgdGhlIGNsb2NrIHVuY29uZGl0aW9uYWxseSBlbmFibGVkPwo+IFtTZXZl
cml0eTogTG93XQo+Cj4gU2ltaWxhcmx5LCBkb2VzIHRoaXMgbm9kZSBhbHNvIG5lZWQgYSBzdGF0
dXMgPSAiZGlzYWJsZWQiIHByb3BlcnR5IHRvIGFsaWduCj4gd2l0aCB0aGUgYmVoYXZpb3IgZGVz
Y3JpYmVkIGluIHRoZSBjb21taXQgbWVzc2FnZT8KClRoZSBmaXhlZC1jbG9jayBub2RlcyBhcmUg
YWx3YXlzIHByZXNlbnQgYW5kIGRvIG5vdCBoYXZlIGEgYHN0YXR1c2AKcHJvcGVydHkuIFRoaXMg
aXMgaW50ZW50aW9uYWw6IHRoZXkgYXJlIHBhcnQgb2YgdGhlIFNvQydzIGZpeGVkIGNsb2NrCmlu
ZnJhc3RydWN0dXJlLCBzaW1pbGFyIHRvIG90aGVyIGZpeGVkLWNsb2NrIG5vZGVzIGluIHRoZSBT
b0MgRFRTSS4KVGhleSBhcmUgbm90ICJkZXZpY2VzIiB0aGF0IG5lZWQgdG8gYmUgZW5hYmxlZC9k
aXNhYmxlZCwgYnV0IHJhdGhlcgpzdGF0aWMgY2xvY2sgcHJvdmlkZXJzLgoKVGhlICJhbGwgbm9k
ZXMgYXJlIGxlZnQgZGlzYWJsZWQgYnkgZGVmYXVsdCIgc3RhdGVtZW50IGluIHRoZSBjb21taXQK
bWVzc2FnZSByZWZlcnMgdG8gdGhlIFhQQ1Mgbm9kZSBhbmQgaXRzIHBjcy1taWkgc3ViLW5vZGVz
LCBub3QgdGhlCmZpeGVkLWNsb2NrIG5vZGVzLiBJIHdpbGwgcmV2aXNlIHRoZSBjb21taXQgbWVz
c2FnZSB0byBjbGFyaWZ5IHRoaXMuCgpUaGFua3MsCkNvaWEKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
