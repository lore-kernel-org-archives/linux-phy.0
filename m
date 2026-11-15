Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0265606A31A
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 12:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D8YO+Slj;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=LmJV4DVp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=i0mPtiMQUv1vnhlAF63rXtbmujDLs1ukRJpnOl7v0JU=; b=D8YO+SljH2s1Lnwed1/AblRxz5
	QGcAjWtdP1Vm0qbO5Rj/Tdv84mb2YXH8yPDAA4HmnY/XRYOMo4/r7G0cxSG3DGIObZctJSGMhv3+R
	Ztre/uBN9/rzDZGge28bgkouy3P9tXX3AQJ5QuNBxQ9l94Bdms7uw5Ile7TcX1UHz54yMHEoITdTt
	kvQLs0fRUZpex/YTu9unNWBFHITLbATFaKBHOOCQf4KPXlu6ID+okWktUvfFBB9cBx/DM02FVngJx
	4sHWFWTG7PqbV3we6yuPiI5IoZUT02HNPmHALsAHO1LcQ91dZ6WH6YXNDIFgiZlHjvG1h6hPMDco+
	C5bVg2Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSZ9d-0000000HVE6-1nUT;
	Sun, 15 Nov 2026 12:16:17 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSZ9Z-0000000HVDg-0sEP
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 12:16:16 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4a1fbd52ab6so20764595e9.0
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 04:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1794744971; x=1795349771; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Cze6EXMazudJouVIRWBezoVb+gMXv48f+e410Dy7G9s=;
        b=LmJV4DVpqv6udjEtwrVs9LWPNFwcseRhq1fL1wFFvJzppSI1WRbZ9CdyRh4TxhjzF8
         iGNZG/SWtCfix2AP34DpgVdG6p7KuobdP8c1s11V6idLrJHnu1xEm5jjQlOMxOF0Jj9Z
         T7/qH2X2nx9Zy4axF0kLrB2kox++PX0ocenJ9lELGY3riIs7uWb4h3A6xK3EINcPS22O
         r27OhAdNdMzolb+ZRcEUQIiBzfV/EqeFLrfikt1uXiFWnoioTXmpBFbNKtzFNekJ7HF1
         hE53X1X7gitbRFe0JoGB28mUDPHzZOG6BdYLmYtZTh7fIZ+GYyt0EJ7SS1/JF6F/IS8Q
         yvmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794744971; x=1795349771;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Cze6EXMazudJouVIRWBezoVb+gMXv48f+e410Dy7G9s=;
        b=x1KDMWGqKxnQqEiNgLzJz3ujVoYbG/jjkOzR2nD68CGljJ3uJFoJCrGgQI2gp9NjkI
         6Nn2fwc0gqIjr2Q7yL25cUfGS5GXmWdnXt3cOsw+8T16BWPzgUQ7ahWMRC2c5eZs87dt
         MKvFxaDyPGB65o7muHairJ3AhRvTbkOjHEFeeJADhGXOp9vV4FZfQq3E1IKSH5FSGEOk
         XUdmW/8kE6GFSpgXb6l68q/CsD+alSb6E1W2ogz6hAiMSVQ+8BfyHnBgGen8PS2m0yTH
         t5iqcpf3Plt06bvImZi4iVpEHDIaDNdeT7Hho6MPGGkQF/I60sGNlrSZPs7hqeapogDL
         IIKg==
X-Gm-Message-State: APuU4Z/fgGxnRnT931NYbEzFrT35p744nwBnOEEhzM4Op2/5uO/5YqAW
	idOSPI/KTj+MBl08MsMlV52RuANM0slFQx+6U64ZeDDQ9tuvmNoLWjeJnjLfbflr7jY=
X-Gm-Gg: AYBFou140kjHsvorUQaMIHdfpKvASuzZFFqtWdphgszAhU/Jh7XY9tkBmjojYxJ3JBL
	V+11x5z1nK0NOJhcOlaMLXhuoT6zGtKu+2HaI4vheVpNKAJ3R45itl64sUPVOWPqTVW0hG5veJC
	r+vH3d74KoPskxpcorWD8GoHy97VhLTpbRC3ZHYLwImm2994yzEeGQBvh2c+JhVeL0MDJWl7Uso
	MWd23rbp70jGz31mRmdPlC59NQK8xkoTadmPw6IiUlq4T+BGfJOepZCIlJEmXYzq7Ds3tsCG927
	iMQzoyriZsYdzT564pwYPQ/fSNw1dqXRUmyDYyDEXccF7eombiHSO+mBDs0J+M/uInEOP0Tv05J
	fID5MDoexRxKDdv0Zw46W6hVl1vZLZlgS60YEV536cfiR5MGEvfuVCmMerwuLgxRKeOSygfZoi1
	YGSpbNwyLilnr6rF3aoGU7XCrJpTWf81WS29fGHxgHzxj8O9CMwUNT9sLs3hUBSb/JlnjSHwNPB
	mLBD5W94QEctQAWpj+v5g3sDIiknj6shlYWCvJQ8eXl1FBGen5eG6wpIa9NFi/NOl8+pTzrbM3b
	py+n96LAU7DIvJZUQ9QJUKqHRCaQLOs0SJw34I2zatI=
X-Received: by 2002:a05:600c:8b0a:b0:4a1:da58:1ee with SMTP id 5b1f17b1804b1-4bb55a95dbamr161321305e9.31.1794744970969;
        Sun, 15 Nov 2026 04:16:10 -0800 (PST)
Received: from [192.168.0.167] ([78.152.238.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb65ce005bsm126726035e9.14.2026.11.15.04.16.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2026 04:16:10 -0800 (PST)
Message-ID: <ea2dea8f-e696-4e86-be9f-248cb6ec86b9@linaro.org>
Date: Sun, 15 Nov 2026 12:16:06 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 10/23] media: qcom: camss: csid: Add support for CSID
 980
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-10-8ff2a11835f6@oss.qualcomm.com>
 <130fecb6-5372-44d9-8261-c3ac88248631@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <130fecb6-5372-44d9-8261-c3ac88248631@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_041614_907773_865C75CA 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTUvMTEvMjAyNiAxMjoxNCwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAxNC8xMS8y
MDI2IDExOjI5LCBXZW5tZW5nIExpdSB3cm90ZToKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Zm9yIChrID0gMDsgayA8IENBTVNTX0lOSVRfQlVGX0NPVU5UOyBrKyspIHsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBfX2NzaWRfYWRkcl91cGRhdGUoY3NpZCwgaSk7Cj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX19jc2lkX3JlZ191cGRhdGUoY3NpZCwgaSk7
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPiAKPiBXaHkgZG9lcyB0aGlzIHJ1biB0d2lj
ZSBmb3IgdGhlIHNhbWUgaW5kZXggPwo+IAo+IC0tLQo+IGJvZAoKInJ1biBDQU1TU19JTklUX0JV
Rl9DT1VOVCIgZm9yIHRoZSBzYW1lIGluZGV4ID8KCllvdSBkb24ndCBpbmNyZW1lbnQgYSBidWZm
ZXIgaW5kZXguIEhvdyBjYW4gdGhpcyBiZSBsb2dpY2FsID8KCi0tLQpib2QKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
