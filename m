Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FC8606A325
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 01:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dFjFthDZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=RLKD4rdw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DslcIb2a2KvBxC1fNvcd3pcYgGBD5KHT/8JDDiKlDPw=; b=dFjFthDZuadhnL1yCJP8O8n7lQ
	g1kZbmR+QMvSq3k2CGnnBxlq4V2L3R54lwmPhPYLLRXfki4qsi7SSX9wxjmbHlSpUNmHDUxy+iEHi
	TBGTdhYFQwcNDC5MsMBZO/bvT6uJR6y+naR2Yxl5BZJ0sHW7AA6KCuBoefOSI6j/VSdhi2Z4J4cKI
	l1Rd/GXJmLYEj7fudoxklDRAVkIZWvODk098r192B223wYIvSnuTPhc5VTh9fptvi/TzosO/+bUTa
	qD+hoa2ys82fqu40tcsCYnfBVuHEn8UMx+TwepbMd7FWlEltbpG0S264Qq/9udHgoArfopQHaQ/kl
	72i3UiDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTr4H-0000000Addb-1vOq;
	Thu, 19 Nov 2026 01:36:05 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTr4E-0000000AdcE-0wsn
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 01:36:04 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-c506187deb9so28653266b.2
        for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 17:36:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795052158; cv=none;
        d=google.com; s=arc-20260327;
        b=rrhL7iQhBT+xXT5QRp3hUVLilgAigOTL22D8XTbnBQ0D6NXiMmw+lzFrGCaCJB+Bos
         V5XLH1LZ46yhyGgcohxfes4SD8SlSkz/qFJAzDIsocfgIZtAJNsi0I25pQSPmdvF3lUg
         8wmUehD9uCjPYIFfWTsmFcvtl5P0uwV/4l4Wz/Hk1VNisOxiTWzCfY30rum9Sw0jTZcu
         2UP9us73gz3Qd+tMsMocla5lVS+rPJVjtynCS0Se16v9ZGEPJa5ypLDYkvHHuIJBAoIZ
         S1A0A97QIgyfX8yDnBpHJ8l9VkAhiiPKF1ntxz6xsxTvFIaeqIYSnGPwPRlNdIizPR3A
         5DFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WaRyxnVWPqgnXOf76Bo8+FkIIWslu9CLgRdA1TVjs0A=;
        fh=eou+F2Pl7Pr26dXqWnS4egxFT6x1EQLuEJYXCBw9LsI=;
        b=FL331VvA7qa8ly5YctLZQFnsqM/fJDCf0KWsBo96mmIL5/bwignu7H3hJOC81VaOVX
         QYVoVSJTKR5WVhgIU9ND7IPxpDYaJhpgzOZGXmpq3mGvYAFMUvlizCy8YJJ7I6uTTvue
         GWW++8dqzsvL2Oh6VpFU2+580qqcCOJwQOwaVisCWfjU17a166E+tIn/OmSX/ul4Uk1C
         mRaCZfBn7f4m6BdGC1UGCeJenn4IOAGOPuRe+y5nuQ72mHs3zXveQW1mzT1VcbKs/JPY
         EvRRVOp37GYKYyTrMtvcLdTueROdjEsNmTaR/Zbgdc92ulevmZXgT0HOwDpZxYV5m35t
         JdLA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795052158; x=1795656958; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WaRyxnVWPqgnXOf76Bo8+FkIIWslu9CLgRdA1TVjs0A=;
        b=RLKD4rdwg7AX6q6Xv7pL46VABEUr2hG6XutVXVHPoM8EcI/QtmiQzX1R72PY8xyAkJ
         D8NfMPl0Mvwnok2jdxKhfgKxHi40WxJ0pVHmEMky6Mtx/TsLAz8fClu8ydBEomhh2k8b
         7mcldCN6JK4q1Vr0GXpaprI1Phmx0pf99Oezq/poINZzO/lKWguaSj54lROikD2DTti4
         JKu4frlISQoI5TdbP3c+hZhA8PTrErx+Ol0a9jSBkwwOezEXu+4AZaCrsP2w6Mz/ARZw
         uBy8i+w+pNC4zGnCGe0JTOMOkbaFCZKHZ21NlPnZJ2YrUfbz/w100Ztlbz+uCHtKrCyj
         9wDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795052158; x=1795656958;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=WaRyxnVWPqgnXOf76Bo8+FkIIWslu9CLgRdA1TVjs0A=;
        b=LXUFrekFJ/Hc6//RZ3Dozufym7D0JuYd8QlX7Tc4ACges2RctMYCUdN0OTGdacsc/f
         kSfCo6UNnxRQ96tP9oCd79rlWYQspXYQdIVvTHVCtlR4UhHQdVyz6PmHxcF2hTKxhg8N
         m5XeyxFMUQQTnOXgcC3rqNMzU8irxiyer1xXSQF1j4TV+ngTbKg6cS1SNiDApDarvbPb
         5hXVnkZU+1D99k6Rxwi0qYDj8Al7MIUmoozx7Tn80VOCR/W1YkL3EfNZJzDROs2lTSez
         Knvm0Il8KXoYBLjNyQPId59Saf6Hll3PHcSHkHv0waJouqAjLlEtrEOhRKnOwqMR275y
         swtA==
X-Forwarded-Encrypted: i=1; AL+hErGhk0a7zz6lfjn1H19Y3tByjtTVLkzpIOHN+Cw07Yra1x6mw22xFZUW0l5sr692Wr9CB8143lKlizA=@lists.infradead.org
X-Gm-Message-State: APuU4Z9tau5Mb+aXDqUuuWotwVxJOtFL0LATPcpD+5lKXJCYa5f/IUTQ
	XtNx7W+Mfq8R1EX+K68Ntg2Fb//ySXSTBC6fzUUGF5x7OozBnAXH3hdy61ZxLq0UGvgTl6KifnR
	oolffxwnlQW2u+vSo/QZbr8hgM1w4T9k=
X-Gm-Gg: AYBFou20JhptxXYop8jjq2gDFQNfUATeFwQuKuge+EfMGnjkDbismx7w46Yzizwb6U9
	gEeRMnDId6hBvr0VKWwx60xN4WsmbrZRX9Uxw0jcpJF8ecYTtZIbKAOAzz4IPti/jn/s0aOQVMV
	hySHo8njWKVmp57S45W6nZ2IJjpQW9Tx7X+6DtZPZnqbccPtATflydmb9fH2+JKKgfWKh3miOgg
	Z/7/CAScUB6Zd7crQhhhunXFB0uyP1aN8sUkM3S6994+7NQlzf+ejib8DvmEl00P00OryhGY5KP
	KdCtqu7o0aspr2rEVlLbVzKthorObJr5MlAYK65H6PDo/af+wYHATWwvvgrZfvQYSupzDekxngi
	p7pyc0Iwe4cO4BcPT2HtbL2Tw1YZL2FUKeBvFgdRKAJjarwgdiKU2A1XgxcdTe7igRmVE2Bs=
X-Received: by 2002:a05:6402:446:b0:6b4:2960:d381 with SMTP id
 4fb4d7f45d1cf-6b887a7ca45mr3534756a12.1.1795052158003; Wed, 18 Nov 2026
 17:35:58 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
 <20261118-dcphy-rx-v1-v7-2-8de1adac3a74@gmail.com> <3a9e999f-5ff5-422c-aa65-b8560dca84bc@kernel.org>
In-Reply-To: <3a9e999f-5ff5-422c-aa65-b8560dca84bc@kernel.org>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Thu, 19 Nov 2026 09:35:46 +0800
X-Gm-Features: AclHuK8yzTD5Ny6Jae8xfaKIWU82OgGlGfteSTdmbBGr1nUYx7XM082OBv9L5nk
Message-ID: <CAPwA33KcMNnyBEeWkheaEQYUp8FhR+xOdrfv2CAEhG+YuAV2Vw@mail.gmail.com>
Subject: Re: [PATCH v7 2/9] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 Select TX or RX, add phy-type
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Quentin Schulz <quentin.schulz@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_173602_301125_11B1F9C0 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/18/26 9:16 AM, Krzysztof Kozlowski wrote:
> Please drop the tag, this did not happen. In the future, please add only
> applicable tags. Otherwise share how this code was executed and tested
> on the actual hardware (make process, like building code, is obviously
> not testing).

Hi Krzysztof,

I will drop these two tags.

Best regards,
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
