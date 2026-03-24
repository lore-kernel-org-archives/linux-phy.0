Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44604E9A777
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 12:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhSsvpfJL5MNNgn748xgAoAC9WmuEAMNUTV7ghiH8l4=; b=UjgTEMVzuEgdIf
	sO4nCchJu5tNNVjAWDwbvpAJk6jeSbdj9g2kFgAzQAhA7tb71sz7cBBLIt0KLEREI/bImgdxbhTr6
	rE4TzADVOoLuhOkBStdF12hiv5UG64BjCGRvc/dXkvb3ecu7eeUVCKNhsg6yaFHo3IzJCKbGBvnTe
	0fuHHO4EgCrUMHbFdDJ6fXp/xtTCwXbSiSnWv2WYPmTVSpxZE3gu4uBoEUHP5WRy+aZPrEHIjvzb1
	ellTOpgQG8bop/Hd7AK27AomcNX89bmuoepKmZPVt7s0F/FwYI7M4es3lT0IGBzmeckzykN51cwvy
	UAOzpatsL1UntArnd4sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50iX-00000001MOF-47S2;
	Tue, 24 Mar 2026 12:18:42 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50iU-00000001MLc-3cJc
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 12:18:40 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-43b467dcf0bso3770413f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 05:18:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774354717; cv=none;
        d=google.com; s=arc-20240605;
        b=OjJ9tyP+GbjITUbSrfMsJc1bLQtXheHUr0SpP26HG6nfkuF1oHWzrR3kXzZ7+ulAvu
         qtNN7UR9NKwkfydujsXghmy/EWT9Xb20qKwANYmpG3l58pQLHhfFjhGHAjsJAwrXJF9I
         L1AOovXoC3pkI4ckJ4QsFBwKKTFZ3k+mjOqpRGJt4Et8EljAjU1sR240ajTIfVbcnCmU
         Wj0wCTzEeDp3S5aIa1JoLZyGHuhlntieFEt+vQtKG6+xxymvxLMczdJPYdcdiqLFZ6bn
         Ys5HSx2SX/f6tAuxHD1/14MDNukzpnsRypPlZdbyAnrufxzDjw7RuAiZQOgDv3zqxSIX
         RTQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QxEuLOp4xC2eZw18lsPki8VzBGwyaM4MJgqBUAEFTC0=;
        fh=JWH73FFl3HBbZpcV7uu8l+NQDDBChM9NbPGV+49dgTE=;
        b=C1KCMyKdfdhWM8sDyx/VRyC3f1RTSjAV50gNlEph+3hw/NwiH5D+DKeF9V1Kbfe04Z
         U1rW3N4oU62KTB9rCwWIuCACgaW3VH4WdNq4zQyVtyPodTMOB6ay23iUU3fOYEJJWM2U
         /lngfty+KCq0Iiovqu0JRN/vKeoHsfzegNGUXc/P9xZmXFijfe8+/QOiX9Tp8rhHUh1l
         efzyuiD2B6g5f153XJL11m9bLeT2hNNNYrwtA88jIKrqsxrrzq8da7ZJIOM1d8ec5/ae
         8lRiyhsHPR+DyweOailIj515KR6ph++n6+ilBrgXlhTRP4CQjsw/LqGWJBX4jSdrd5Du
         Cj5Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774354717; x=1774959517; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QxEuLOp4xC2eZw18lsPki8VzBGwyaM4MJgqBUAEFTC0=;
        b=LRK6pxEzHKwK/KGOfpxlT+90wvEm9b5ogYHXEckX4+FmIrl8nfk3i7+k1Y5NGt2Ulf
         jgz6WjFoRJipC7K6vABVZ7hjeFehNtmTok3zHCCGzk3pOHJWxRdWxhOc0mGIfMAKc9CN
         j/lruPt+v9DQxpGkZw64IjzGBGr1Fz5zkJxkOjDKTdNvt8YXNX+XdfbI1W6NpigCUpm+
         oMwa/qyLAR0hgFqsLHYoTAWPeZpnXALB11ZH6jqqgPOQVjRw+jqHmsPNzfBUauOOgiXC
         1/zr8JJUwDlFUpttGkbY5lhswr54muv+y4WR+lP4rpdQ08QkFI7QyKXHAuX9ATvfgUlQ
         s5UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774354717; x=1774959517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QxEuLOp4xC2eZw18lsPki8VzBGwyaM4MJgqBUAEFTC0=;
        b=TfGGF7XS4vEXDGYhBWjdTekMkuwDtqYbaZEwJsW/v7JsL2vujZpkBoXOUFhUu+ofgG
         FiaVdxspvrsBKDhUbaxMP1f697UdGdOCd9BC3QK+rf4WsY2av7uanoHBBDpDhwElUe6d
         0uiHlhwDGT6U1Rud7HDi4Rd5LIEF3Sh6m0rLB3hMw5alemq5vXSipXqfGHCpiFe91L2o
         72Q5glF9ouI1Mdd8kuKbfRM4xJ5vNttgchDtfzpas7xvFIu8pN+qonAk7fsgwqKAll0c
         uhuaJnkWtuojzV3rd3yjSutQX0R+m/4xORfuJQ674iW0EHq1ONowsw2CcTvqswmTP4+l
         JY3w==
X-Forwarded-Encrypted: i=1; AJvYcCXGQhKk5P+Ge+pjfOU+k+kR2/UtcsuH/x6Vi6fCEBiGRV4Nz6vH1ZlZUyvnkQx9Me/zxiAPvLUmf5w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxps5FqPeoStPujMYTC5O5BixxVz44dIiXpR6Jutj2BCyEKqAtn
	BQOYVOcuRZtL+oit6FwspUB9+Vxn2pApC6YVD4uiHyufMCEQ+tuQkwSgohW5OVGp4JbbrfSOPfD
	52GzznKLg+Cx68SjwBFNHXO5cbkrHdQs=
X-Gm-Gg: ATEYQzyPdIwdMuvxXc+gKGfLtyBtyRw2qMMVRPIMfTbi7cZItWCvo2RY+i3X98HkWdY
	hJ90sNMKLS6kz4JyjSuQcFvdY+N/fuhfBEcwuXb/ep7Fvgww7jcJmWrU8ytvoPERUTIqg7qNiD9
	jnpY6Gb5fPFIzhHzkE9bbrZ3TW+oBFT3RM9g99Tp8aCdZgSOwYDsA5sgHDgZUh5wpuKoSlW6wJi
	R3pXgebx9dNdXuO+W6mPi+9ZrBT9Bh+rI868XkNdGSDW5FDB4g6nLj9VWVS9R55rYHPX+a+s8WN
	l1gMnClOnZcqDJAAgApExL03weKSFhy7ki0o3aMzjoV+L8OPj6vVCqGFFAe1ZHn3rfVelA==
X-Received: by 2002:a05:6000:2dc4:b0:439:bb46:7457 with SMTP id
 ffacd0b85a97d-43b80592278mr5255822f8f.16.1774354716596; Tue, 24 Mar 2026
 05:18:36 -0700 (PDT)
MIME-Version: 1.0
References: <20260324121608.3444943-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260324121608.3444943-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 24 Mar 2026 12:18:10 +0000
X-Gm-Features: AQROBzBFprl-LlBR1W4wMVA0lHzQhEG_DuaiN79xSlKGLKZrUA1HLFUH8G-m0yg
Message-ID: <CA+V-a8uP1dEiGH3mRGAUmzcB5u_ZgYMMPPJU__6OPv52ua+pGQ@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Simplify ID/VBUS detection logic
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Pavel Machek <pavel@nabladev.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_051838_929092_F258FC0D 
X-CRM114-Status: UNSURE (   8.16  )
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

SGkgQWxsLAoKT24gVHVlLCBNYXIgMjQsIDIwMjYgYXQgMTI6MTbigK9QTSBQcmFiaGFrYXIgPHBy
YWJoYWthci5jc2VuZ2dAZ21haWwuY29tPiB3cm90ZToKPgo+IEZyb206IExhZCBQcmFiaGFrYXIg
PHByYWJoYWthci5tYWhhZGV2LWxhZC5yakBicC5yZW5lc2FzLmNvbT4KPgo+IFJlYWQgdGhlIFVT
QjJfQURQQ1RSTCByZWdpc3RlciBvbmNlIGluIHJjYXJfZ2VuM19jaGVja19pZCgpIGFuZCByZXVz
ZQo+IHRoZSB2YWx1ZSBpbnN0ZWFkIG9mIHBlcmZvcm1pbmcgbXVsdGlwbGUgTU1JTyByZWFkcy4K
Pgo+IFNpbXBsaWZ5IHRoZSByZXR1cm4gbG9naWMgYnkgY29tcGFyaW5nIHRoZSBJRERJRyBhbmQg
VkJVU1ZBTElEIGJpdHMKPiBkaXJlY3RseS4gVGhpcyBwcmVzZXJ2ZXMgdGhlIGV4aXN0aW5nIGJl
aGF2aW91ciB3aGlsZSBpbXByb3ZpbmcgY29kZQo+IGNsYXJpdHkgYW5kIGF2b2lkaW5nIHJlZHVu
ZGFudCByZWdpc3RlciBhY2Nlc3Nlcy4KPgo+IFJlcG9ydGVkLWJ5OiBQYXZlbCBNYWNoZWsgPHBh
dmVsQG5hYmxhZGV2LmNvbT4KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9h
Y0pWLVhxLTJ1cV9KRk1uQGR1by51Y3cuY3ovCk15IGJhZCwgd3JvbmcgbGluaywgaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsL2FjSlZDT2RsY2hMaVNlNW5AZHVvLnVjdy5jei8KCgpDaGVlcnMs
ClByYWJoYWthcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
