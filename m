Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2563C3DA79
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 21:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xN55BFoUDVIS4+bisaRLuNZmCT9EhcfVOU3LBHzI5Mk=; b=GjtO2jYsestSWn
	uknAorIreV2Sh8DimDD6SprrMSP7Lo6Sgk3xWTnK2G/ydtXYq4LMS/l5GSrM/O3UDAouJgZDHjL/P
	Zp53vJMiyepMUrOSM+y5/hpfTI6lkzuUgxuky9w1qZuhnTRY/ocZgEkoqgkNap1AoyAAMtqn7JMW4
	0KCQqiZwZ+gnuRa0jZ/mN9eSWwqf/IegNLd8xfrF6fuCxz+hav5urIMUaictvzrLXLBXD0lvXBXln
	EiCRtZFdycmkaaWgbCP0y24aag10Hbpc+1FvUNgkqQ9Da+BTsQxMaVGkywxmAYCadQZsiYKR7ESKj
	Mk9mqVHIrgxnF0Ly2ENQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB0K3-002BG8-UD; Thu, 29 Dec 2022 21:20:19 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB0Jr-002BBV-Ca
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 21:20:08 +0000
Received: by mail-ed1-x52b.google.com with SMTP id u28so23345120edd.10
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 13:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wCKY2PQJHOCiDRhEZNp0Rqp+epTZrGx6K/Sb1RZff4g=;
        b=b+IjD7d8FVO9nGq21lEqB26ImDC36QEGC4+0eF7piOvZh0hTZHL75KHPEKQLZjHhkr
         t8RPcTWLGUbxOeOTgo12B7+n2W1tpc0D82f0Nd9dqmRczzH/b9vcMdaEZ6Zfr4grPhFS
         Foe1yh1vjTxiuwLHAvn1xOtHjZ8GEN+HePHn4SaKYJEH6QBpIxAQNMF1OnZuavhmQxxV
         EDsb93Xnou9S3trzAmK9HfT3x0is03bLCw/4BMLxx84OzuqKp1sJoJAvnBaarKrqxN2L
         keUl/rjZ56MnxhIBlyIvCUjM/UpcSdpnwWTRS23roYgQTiM/yH+UdxGeLgwtmY3tbkkG
         Dvlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wCKY2PQJHOCiDRhEZNp0Rqp+epTZrGx6K/Sb1RZff4g=;
        b=dlfOk0h3XmsX7LfOB+MIcVZqiTctaOPALB7b6JNyEWUlPO23amT3RkVDfxd+VOQbFm
         TFPXSKFJLR78KZY2NGymy/66K7pUmL+YJKHpgxss7yVDbZfj8B5qlF11/i6R3ocTf0Aj
         s1AzeNj/H+rNmFKgsgThOP2i8lUI1gg3Q9mL6ib9SJ+Pnc0AZWrYtfLegJU712qcgoKo
         VH89SN1F+y12MaIP/fBYPo2rd2Bv7R4WGnjVPw2GjPonxN9nUMwxeWgQgaUQ1bpEvjLH
         seYB8OyTYazU27e/R6DnxQoNOwtxn0CQTI3+kyaoNmqi6ZYTD+tApsSiCXe6iEdBg9dm
         7GMw==
X-Gm-Message-State: AFqh2krXmbWr+lPwPkVw7NFlZRktWWTVMCa7UejxPNcLk7XxzTwXg8nV
	DTllIkNTjCDQ2TlFwXJA0DvelA==
X-Google-Smtp-Source: AMrXdXt9Qg4APzfofYEf0yIb/xcSUmX+cpIGBmWpVd7JEZv5+QAEwAKIyS1lzbzesLNianxSKYL5YA==
X-Received: by 2002:aa7:c0d6:0:b0:488:6fd0:cf88 with SMTP id j22-20020aa7c0d6000000b004886fd0cf88mr6235612edp.36.1672348805033;
        Thu, 29 Dec 2022 13:20:05 -0800 (PST)
Received: from ?IPV6:2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f? (2001-1c06-2302-5600-12a8-8cf4-e3f6-f90f.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f])
        by smtp.gmail.com with ESMTPSA id hz8-20020a1709072ce800b007b839689adesm8995612ejc.166.2022.12.29.13.20.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 13:20:04 -0800 (PST)
Message-ID: <cdcef656-1ae7-fe8a-a4dd-3547d6395b33@linaro.org>
Date: Thu, 29 Dec 2022 21:20:03 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 2/2] phy: qcom-usb-hs: Add qcom,dp-manual-pullup logic
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-3-bryan.odonoghue@linaro.org>
 <Y63uSgMdP4m6nvhL@gerhold.net> <Y64AfHcUw192Pyr6@gerhold.net>
 <6061938c-b830-2fe0-2f4d-368e34c33676@linaro.org>
 <Y64CaOzWZXERrvkz@gerhold.net>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Y64CaOzWZXERrvkz@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_132007_471785_6EFD1951 
X-CRM114-Status: UNSURE (   8.79  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjkvMTIvMjAyMiAyMToxMSwgU3RlcGhhbiBHZXJob2xkIHdyb3RlOgo+IFRoZW4gaXQgZG9l
c24ndCBzZWVtIHRvIGJlIGEgcGFydGljdWxhcmx5IGNvbXBsZXRlIHNjaGVtYXRpYy4g8J+YhAo+
IFBNODkxNiBkZWZpbml0ZWx5IGhhcyBVU0JfSU4gcGFkcyAocGFkICMgTjEzLCBQMTMpLiDwn5iE
CgpMZXQgbWUgY2hlY2sgYWdhaW4uCgpObyBzb3JyeSBVU0JfSU5fMCBhbmQgVVNCX0lOXzEgYXJl
IGNvbm5lY3RlZCB0byArNVYgaW4gbXkgc2NoZW1hdGljLCBJIApkaWQgY2hlY2sgVVNCX0lOIEkg
anVzdCBmb3Jnb3Qgd2h5IGl0IHdhc24ndCB1c2FibGUuLi4gKzV2IG5vdCBWQlVTIGlzIAp3aGF0
IGl0cyBjb25uZWN0ZWQgdG8uCgpWQlVTIGNvbm5lY3RzIHRvIFZCVVNfREVUIG9uIHRoZSBVU0Ig
SHViIC0gYSBVU0IyNTE0QlFGTjM2LCB0aGVyZSdzIG5vIApjb3JyZXNwb25kaW5nIHJvdXRpbmcg
b2YgVkJVUyBvbnRvIGEgR1BJTyBvciBVU0JfSU5feCBvbiB0aGUgUE1JQy4KCkkgYXNzdW1lIHRo
ZXJlJ3Mgc29tZSBnb29kIHJlYXNvbiB0aGUgUENCIGRlc2lnbmVyIGRpZCBpdCB0aGlzIHdheSAu
LiAKdGhlcmUncyBlbm91Z2ggb2YgYSByZWFzb24gYmVoaW5kIGl0IHRoYXQgUWNvbSBwdXQgYSB3
b3JrYXJvdW5kIGZvciB0aGUgCmNhc2Ugd2hlcmUgUENCcyBkb24ndCByb3V0ZSB0aGUgVkJVUyBz
dGF0ZSB0byB0aGUgU29DIG9yIFBNSUMuCgotLS0KYm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
