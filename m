Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 504CDC53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 09:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IF8Pp9LAUJvJz8z6jg1M6ZFmRIuAG8GDTgfvdLvoUNk=; b=V9IfbbnMLbB3fb
	YlXlpyMcazY1INqcS2En7psm7iql8Bf0+r1iET0vsiQc/7ulH/v7+oMa4dw5psTSIyQjMOBChjurb
	H9W3FYOXzxPZDGikvncpU+RhUauInQXtT39A8XZkyG6rER/trV19WGVezGrw2qdyt9wgWLF2Zy4fz
	16XgT590l0m6vnl0GztLBUvPbJm0/Ki4Pb0+2Fl59G/W/LjaHA2qz/Htp9J/ddkGVoEllNUyEGhgv
	2eer212qT8t+bsxNbaqbBjk3hSwQ1zpXJdeLkf2TlNiOz2BJu8M3ubV8kHaZxrTHIO2+o05wSYA9J
	PKSN/zJc0AGWVhEq6veQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0FS-00000007JmU-440w;
	Wed, 29 Jul 2026 09:06:47 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0FQ-00000007Jla-0MZo
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 09:06:45 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-69ff40d9cbcso1070740a12.0
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 02:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785316002; x=1785920802; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4ErTA5SmPrm2LDng6tlFDy5jDtcI+zchVNjeWFoCdYk=;
        b=huT7Xv44d0q6yyzW0EId2C2YtG8Q7Ohlrs8zppywnTgILhe0DuSd+wd5DufOAB2jsy
         IYUsZm/YEZ1CBQXzJc+vNdzysr4goXDOwKNzigbCsYX5sWNzKZ142KNf3W/mhPa7MB6z
         qsWakdIowqoBnSUngdyPJyYl7FJd99vj/3CIAXsWYAVcY63Tq0uRFonKr08gqTRQu9J5
         jE6/Z96SfXPbMresZu6LHEwcpfdVeNLu4xcbQE3ray91xI7+mXx9ttbCubdnkhcHjsuc
         c1ReKZVzQM1JEd2VwFhv2gLGIbZbcHH91tI9+w09HknblrRnM2N5Elftl+vAwwBuHiBo
         sWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785316002; x=1785920802;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4ErTA5SmPrm2LDng6tlFDy5jDtcI+zchVNjeWFoCdYk=;
        b=ljm05Xn7sYTBup6ORCOMs7e46uy9O38Xw2uNEH40ATJSM8wipD5OQqKzO7nlWYuQWA
         DISOAeaSsxG1GdXk+bolviqlp67xbb4KAaFBTQ+YtVQIt5fM/nTCYgklN+aGrc9VDt8W
         Hq2FerUHV+GKbFkAXq5EvmF2qoA5iaUxVgSaXA+80tnxuGeWD/u5xZaRxvIiln2tgQTC
         95Mo/4zQKHpyeik/i2DE2V9L0HsOqj+iojqhy+rKN76WlNsOYiqwEo8IQKJv1nz+aqbA
         D3/7SVL0T0OheQciAwf8PecD2Tk19GXUXaYZgp35qYPjzbNEwSbva6oP6bcOWYsj44G/
         CN+g==
X-Forwarded-Encrypted: i=1; AHgh+RpxTbJIwfR6oOK2qaqidjWi1dvmovaBm0ehy1c218PHv93bysp4k/cxFk+QLdE3odhH4SKj+ioEffg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyvJxFSmdZJR42qfjY4aosbuxQidtz8bLya2lHwWoscnHM23vdT
	kmPpe0oa9wuX8a7eHIH4IDLHnLeuSmlrfLmQNsuEk2AaghRNdMrtmzF/EsKNDli13vk=
X-Gm-Gg: AR+sD10kMHTDDEnPzPJ2vQUaGaO+rAXpq+di2KZG9PlHM0L48KR3aBmRyplDkckQI9m
	8ech6q158sD7zO03iDcpXH9GcaXrDfZBTWKl/a3ogQLgLDa/3JGErGUgzUFN04cBENT9SxutDJw
	F12vShWaT7LClpI0gpTQgeo5jfSMEzBBzvQP7+yrYdfto5HoPvvL/nV9cET/xC5gr+APt1h8LWV
	I3NZK/CmOgTeX8NvwSlc4OeWu71YjnX6fK7DW/QPFacDzjVIfOH8+vX3JcWV5MZPSYn0vwb9JHG
	WvxUVuGpP7PUwxdnqJPS+pK27hMruuo41IKiwauW8CBDKgd4GJUv42EU5lyALF0ydtt5sLDl+S7
	bDWXSK6qkhyXWcKRLq0iAZ2EsLLS+7OTVj3osaLBUuhm6sadR46jgQqZX6ygjMEIBsfAz0YfSyy
	gaEKVE8tMkQ0nYt1CExF6rPdHkK3EwaZdIx1R5yV0Lt5sz0k/idCw8hSW8t6QLJiy7C8YgJA==
X-Received: by 2002:a17:906:f599:b0:c16:12ff:dc8b with SMTP id a640c23a62f3a-c1f72216e04mr326056966b.54.1785316002175;
        Wed, 29 Jul 2026 02:06:42 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.24.32])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1f83ce1649sm86953066b.21.2026.07.29.02.06.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2026 02:06:40 -0700 (PDT)
Message-ID: <53d0bd5e-60c0-40ce-83e0-c123d191a72b@linaro.org>
Date: Wed, 29 Jul 2026 10:06:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 5/5] dt-bindings: media: qcom,x1e80100-camss: Make
 vdd-csiphy supplies optional
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-5-ae811e2f0799@linaro.org>
 <20260729-uptight-proficient-whippet-1a4aa8@quoll>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260729-uptight-proficient-whippet-1a4aa8@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_020644_136122_DC1092D2 
X-CRM114-Status: UNSURE (   9.35  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 29/07/2026 07:25, Krzysztof Kozlowski wrote:
> On Tue, Jul 28, 2026 at 10:35:36AM +0100, Bryan O'Donoghue wrote:
>> Moving the csiphy to peer nodes means making the current supplies optional.
> 
> There is no move here, thus this change is incomplete.
> 
> Best regards,
> Krzysztof
> 

Hmm, I've obviously missed a comment from you.

Sorry about that.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
