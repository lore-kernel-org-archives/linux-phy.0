Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41174C3DA64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 07:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seh5Xp68FBlkBMq5KqQfmeMsBHUD9ezEHrbPhL+zmT4=; b=yyAITkHpsitNNk
	BfkQgtp4G1MhalzJQC2SnCK+VB4L/+SDseLGUxpipsdc/Db23mw0nNTNLySXy4be/ko/cRYIuWwVo
	ITqfWs9hJMlsgkbANOLdFlCIqpeZM8+C212qfUqDolcU62c+ELgcTa1i88++VkdnTsput3xktqOY8
	ysoJFBR0GjjU7tZFCOrQmTOBvmvxWMHikmJu/f3KmJYWmUkjq9lUwPIYBvQIu9P/JgD5679eGf2l6
	5zXr8QDPvLpyL2YVEta4zlBeKamuB1ZSG8BTV45hIUV6k/TLFjRwfVuYwsXJ9Ak4gG/0TzRA1WlDv
	qqBpRjVyvx23tJHDOvwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPnp-000000046Kf-3r4Z;
	Thu, 01 Aug 2024 07:00:45 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPnn-000000046KA-2clL
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 07:00:44 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-70d2b921cd1so5834537b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Aug 2024 00:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722495642; x=1723100442; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Mnbrn+r8w67xaS4dRlv2WYPfTmOAIm6sgMTn3y+iDAw=;
        b=bjVqIdZWvtJlITN4+LGfLdDJv9V9E4iBL1u2ffPyHloUhWY1NbGLew7MLRYezRS/WI
         ySbScJEyjIMkjw362UKq2mXyta8UKSHVYKysyhXWISlE4fTF8Sb12dP+mGGEVFrKYEmG
         vrrxGF5JteRtQMQifrWnYdJNRA3I0/1oO1IBW7S3xJjS6ofnojaPwzFDoAok0mgZv9je
         fk2A5GMoYZSHfi8P6UPBSMf0bxOYXTMEHYxF3kzrhQYMKsfcGZVdasrxqncPVCpmyfN1
         IZTYaeVAa3PmvcHA23wv3Rue/YrbadXYCfnG09FCrrlfyWhDHaAmUGygu8j/nMxxYshq
         ws0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722495642; x=1723100442;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mnbrn+r8w67xaS4dRlv2WYPfTmOAIm6sgMTn3y+iDAw=;
        b=sxdLR6zwlhvF4hgD3ybZooyUvWEyoaofWli0LADw4R9nz6tz5UtGlmVhVyQfe4rztl
         5I2SNxLDU+nnRSzpdPt4wWPqEQD0KtqsRtT0ltpJo+lcaraD0/DcBZBzgLcWmsdB0iOX
         jyESF1vf+07VTKkz7xKzYinodFT5hjVIal2zwu3fbUmMzldNuUbtzS8Z9J4gC8nFoJbG
         jV3iTJCLgJDP4CnACtVEtF6NUhElDsL+8L0yGBMyDRFvtyk33/EuvayqgkoiJF8D4Wb6
         l8ERMTaFNxbDFU7at63CX+cPWwUys6haCebvzRNcHi2qNEqyslrPRaeL/i8wejTPwoD3
         i5wQ==
X-Forwarded-Encrypted: i=1; AJvYcCXD13A52usMW1PgzzypBriPEPq9LE3B7QElpEtW3K+B04EWGyW48h32VKoBVDqdQX6R2BY++17MamG00QdiIL+oOebQriSRUJ6lj+3QUQ==
X-Gm-Message-State: AOJu0YyOvp6hkmrYQ69BT3jucxulGJXPFjWwjlEBMidbIb/mHmopV/oz
	g0fUdUqHmP8rWVSZQDtowV9mWMICV3VgFXLJ91aBDWfNpDnerizJx1rn9FFBlQ==
X-Google-Smtp-Source: AGHT+IEaoqcF6Og6OLvQ7ewWaGYFAcW4sjoa1hHGd0TMPSQdLKOqtrUdh28Iv6TE2SdAUU8BvpA24Q==
X-Received: by 2002:a05:6a20:9f0f:b0:1c4:aedd:7b97 with SMTP id adf61e73a8af0-1c68cf632a9mr2147243637.32.1722495642281;
        Thu, 01 Aug 2024 00:00:42 -0700 (PDT)
Received: from thinkpad ([120.60.66.23])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead8834b1sm11302281b3a.178.2024.08.01.00.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 00:00:41 -0700 (PDT)
Date: Thu, 1 Aug 2024 12:30:26 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v3] phy: qcom: qmp: Add debug prints for register writes
Message-ID: <20240801070026.GB3705@thinkpad>
References: <20240731152548.102987-1-manivannan.sadhasivam@linaro.org>
 <172249532035.256913.2685367794999812971.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <172249532035.256913.2685367794999812971.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_000043_686929_3EF07682 
X-CRM114-Status: UNSURE (   9.66  )
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

T24gVGh1LCBBdWcgMDEsIDIwMjQgYXQgMTI6MjU6MjBQTSArMDUzMCwgVmlub2QgS291bCB3cm90
ZToKPiAKPiBPbiBXZWQsIDMxIEp1bCAyMDI0IDIwOjU1OjQ4ICswNTMwLCBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0gd3JvdGU6Cj4gPiBUaGVzZSByZWdpc3RlciBwcmludHMgYXJlIHVzZWZ1bCB0byB2
YWxpZGF0ZSB0aGUgaW5pdCBzZXF1ZW5jZSBhZ2FpbnN0IHRoZQo+ID4gUWNvbSBpbnRlcm5hbCBk
b2N1bWVudGF0aW9uIGFuZCBhbHNvIHRvIHNoYXJlIHdpdGggdGhlIFFjb20gaHcgZW5naW5lZXJz
IHRvCj4gPiBkZWJ1ZyBpc3N1ZXMgcmVsYXRlZCB0byBQSFkuCj4gPiAKPiA+IFNhbXBsZSBkZWJ1
ZyBwcmludHM6Cj4gPiAKPiA+IHFjb20tcW1wLXBjaWUtcGh5IDFjMGUwMDAucGh5OiBXcml0aW5n
IFJlZzogUVNFUkRFU19WNV9DT01fU1lTQ0xLX0VOX1NFTCBPZmZzZXQ6IDB4MDA5NCBWYWw6IDB4
ZDkKPiA+IHFjb20tcW1wLXBjaWUtcGh5IDFjMGUwMDAucGh5OiBXcml0aW5nIFJlZzogUVNFUkRF
U19WNV9DT01fSFNDTEtfU0VMIE9mZnNldDogMHgwMTU4IFZhbDogMHgxMQo+ID4gCj4gPiBbLi4u
XQo+IAo+IEFwcGxpZWQsIHRoYW5rcyEKPiAKPiBbMS8xXSBwaHk6IHFjb206IHFtcDogQWRkIGRl
YnVnIHByaW50cyBmb3IgcmVnaXN0ZXIgd3JpdGVzCj4gICAgICAgY29tbWl0OiA0ZTkyZDUwNDQ3
NWVhNTg0MTcxNmFkNzc1ZjQxMjM0MjUyMGEzZDI2Cj4gCgpUaGFua3MhIEJqb3JuIHNwb3R0ZWQg
dGhhdCBpdCBpcyB3b3J0aCBtYWtpbmcgJ2NoYXIgKm5hbWUnIGEgY29uc3QuIENhbiB5b3UKcGxl
YXNlIGFtbWVuZCB0aGUgY29tbWl0PwoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j
4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
