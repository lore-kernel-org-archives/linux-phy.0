Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E7E8CA5FF5
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 22:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjWnLkGNt1/oZ2um+aJX7wORI72XkqaGcbDECabjI6I=; b=fTc8UoEdIsOzM7
	hgQA9m480kiyURmOH23t3A6bUCVaANXtZTI9O8e4QFfkYBjSdxiRKMiTRK4u0uaMZimtHc6Z3kA+M
	J0c9f8XhITFVmSbOJXVYZhMjix7bptpXgRZutNUUU+0+hTdR91zTRnseMaX1OzWqykoJAUmDX2FtA
	RaTPOZVqNkNSxtEekZog2zmm9usuwYlllRNxZ5acXTii5r5aISREhC4VQ5/lDITiEumFYoy0kDv+l
	oCN0PgIGWSfT+s/FbQvbwJ6NnFEDR2z+bTcGZEu8Zfjh9aJsTVa0Le8d1pWv/xFN3Z1V3v/uw7Tbm
	Mk0kyzYyO6mVMaxE5YVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqkn-0000000HE1i-39Wy;
	Mon, 05 Oct 2026 22:01:49 +0000
Received: from mail-ej2-x06.google.com ([2a00:1450:4864:34::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqkk-0000000HE0Z-13jr
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 22:01:48 +0000
Received: by mail-ej2-x06.google.com with SMTP id a640c23a62f3a-c2e61353ec3so64525366b.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 15:01:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791237704; cv=none;
        d=google.com; s=arc-20260327;
        b=gr6QZwO2i+1E26UY2dNvqDRybUiG+cb0gNn4WZgiFhK6NMDd21BRKkTdips0czj2h2
         1KGE5QX+ahQ0bNXrGtg+zDxHvomj03oigAIsgFz7eyyoKchP9dNa4IRWVx8m+b639enS
         YspfSFntIU/q2OoAYXRzPM/I63NY+4eX8eCYtr1HkIFdw45ZoXiwCeC91xVMaTN74rWn
         n8Magr4eGBVEH7BBRbVXLYSFR3YQgHw25LDCU7M+DGEMPmxXxcoX+Wdo+GOkM4kMQTYw
         uVHdFbYrua9Bg1oEzRiB8Z2hRgxHj3rcWsY1goFnS4zOtoER6I++BC7JQFYUDVuz75ax
         Wdvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pU6N+LDOUo5/wsUPaDzc+C7fTsEvvOq2zd9vTznRek8=;
        fh=ujKpByVNfzqonRhZt2eJZCv3vqqYKxlQLauHZuyGhyQ=;
        b=ptEBb/l17Ry5kjevMi5g2lNCmdTjQ/KU1EXUjNuTE95ksQ6i8rEnq+2srYzGlJ83kD
         TPrjOtDsxb2RV49oMtaBLSVeA6OXAtNnjq8snLvbiNZK2Emn99lLsjJ6eTFHIlDn61lu
         MLStgrpyM+mLyptSEJo7Pe3qGLiTbx+pxKCxQPn7cCylm2QlLKivDGtl8SdO70Vxy+sE
         gYFOX8HO/WTr5lLbiXalt3qwzdk9eZUg6p/OYsFLfMEDbPXu0uWwLMEH2Gzlk0W6v3n2
         T8DCPym5HPgkz25yZLG/evGOc1Tevu460HbFCWjRP07XTQE7o7V1yh/K8tGQkgHY/mIY
         PZzA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791237704; x=1791842504; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=pU6N+LDOUo5/wsUPaDzc+C7fTsEvvOq2zd9vTznRek8=;
        b=PB3Nty8kztJr5gGuh74+34XwhLggVXKqURIb/jRVopZ0FKopPvzYQkoJxUVaaAo4ob
         bWxFJH1VqX9/esjr/IfjITMjBJj1ntSDJv2zRJ6BQZgAixcpgRu5RiwIw5mHzH2pOrfZ
         GI4HRaO+amTIRKdZQM6d66uEXRAurJXdy0aePYFwCnTFWVpH0x5Lto1AkFI/FSQEL7p0
         P9TGagJqa584cY3dLSntBu6YZH/yzxo2D7lSSHDZU3ciWZMxMeJq/W4OcUBviF1HXC5U
         u56hNQkDxE7UPCHaxiPd2YVmSc3cpdAMyan1m93WaFKIknvcI/7t9SvQYpkX1H4gfEDJ
         OtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791237704; x=1791842504;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pU6N+LDOUo5/wsUPaDzc+C7fTsEvvOq2zd9vTznRek8=;
        b=F3pi3bqOn/UvrLkHWMfqqCLX3ExWL8IEw/spDx8RihpjBteokVTUbkoXnKnVpYDQXC
         HyiZlFZ/IPy8I3v6yaukmYWhNKx5heyENvdiKLNJ8M2JN/MqnQ7DVnhvli87jVAzZSVN
         fAzgk/4MXfwNk0qNieFsN10zEliEjsUGgzEFSQMaH6Dwazl9X4cO/OvyJisOAH2kzBV2
         lfQ5KumviKi2y1Pt57OLUpLC6Rhu85zq2if51kvnU2dIMvNH2SfBhTGry2TFxNAFYEFH
         LR1aGsqeX7kqPx1tTvdL1SrLbt8n0TJFk62jt9o1AFt9uM4lmCio3U84+qqLLF+jLZ0L
         /SjA==
X-Forwarded-Encrypted: i=1; AKwUvByJ4sNXXMFdb/XnsE1ipNLY5kcpzC3xq0DLFx0dXSjaSf7mNqWQVWdw4hx7B4xubttYLQ+IHD7jZdc=@lists.infradead.org
X-Gm-Message-State: AFuF++n0hvmLfaMqGMfNdqvLTAqxtj/gd4uuXuSSAw2uRUoFDDcAPIX/
	bj76ft5nZwTNRYmKw7jxn9ov8hKSnM2xr2WYBHqSfNPHgkfirCtjp0nNuNue26ky4BCYmapd3ll
	P3p4XnL83gOTxjrHBh1Ld56DuyP/F28A=
X-Gm-Gg: AYBFou3+/y0a0RWZnhzojhNy5h5nPLSBeb8TH2EgmfOEon/yiXD9VBFrDJydMOpTWDL
	mvBizsu6pdnvr9YPd3Ktl9sVYuqLZzQ1pzSOzfLa885eyYuK+/VnkReOlyoXc+XLibukoh02z2J
	RChDYleOdf2DvUk0JpsqFJGA6/UEoXqHcaqvMghEoiEAc0h89kxga9hzSXGzCE9SeUKhg1UeTSV
	sHFGBQgRPyW3Zx0ri9gba2qgthcIaxtCOsNthn7L0Fu1Ua0bZuE9Dfcd2H7hSF5WpUWa8a6Lljs
	UgxZ9SxKeeLjm6z53qVSfE1MMHLzsIwqrEmyLjZP2vNn0/ouV1Xwb/Kytw==
X-Received: by 2002:a17:907:2d92:b0:c29:f5d5:5a92 with SMTP id
 a640c23a62f3a-c2e4b007c22mr1011878966b.28.1791237703713; Mon, 05 Oct 2026
 15:01:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20260922200336.2201212-4-coiaprant@gmail.com>
 <20261005135939.01ccde50@kernel.org> <CALj3r0h7j-4ZAiX67LmbgpmYCvK-Xmzd_qnYYgoBmniAW+eiWw@mail.gmail.com>
 <asQZ99CMsQF10-RZ@parshuram>
In-Reply-To: <asQZ99CMsQF10-RZ@parshuram>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 6 Oct 2026 06:01:31 +0800
X-Gm-Features: AclHuK-R2LsVgHnJjNmWI_vZ1n3RwcrYHA0O30u1dyI8VYXPn7GxP9tLow2x2eg
Message-ID: <CALj3r0i+sBhefWPqzt76OX+DxEZqzxg1JOz3d3te0sHzHQTV0A@mail.gmail.com>
Subject: Re: [PATCH net-next v10 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
To: Vinod Koul <vkoul@kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_150146_880421_9E5D67F2 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
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

Vmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6jCAw
NTo0M+WGmemBk++8mgo+Cj4gVHlwaWNhbCBvcmRlciBpcyB0aGF0IGJpbmRpbmcgYW5kIGRyaXZl
ciBnb2VzIHRocnUgc3Vic3lzdGVtIChpbiB0aGlzCj4gY2FzZSBwaHkgdHJlZSkgYW5kIGR0cyB0
aHJ1IHRoZSBzb2MgdHJlZS4KPgo+IEkgY2FuIHJldmlldyBhbmQgcGljayB0aGVzZSBpZiB5b3Ug
d291bGQgbGlrZQo+Cj4gLS0KPiB+Vmlub2QKCkhpIFZpbm9kLAoKVGhhbmtzLCBJJ2xsIHJlc2Vu
ZCB0aGUgUEhZIGJpbmRpbmcgYW5kIGRyaXZlciAoMDIrMDMpIGFzIGEgc2VwYXJhdGUKc2VyaWVz
IHRvIGxpbnV4LXBoeSByaWdodCBhd2F5LgoKVGhhbmtzLApDb2lhCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
