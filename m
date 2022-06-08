Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03DB2C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 09:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uz9nd1+Dfq1Vzyu3bZLGWpXYryJeMGHZafyDF2lvomI=; b=bUvtbDRVClMUcQ
	ClHmRBBnsCAlODMtv3+FwbEedWKXVrFHpwWwDiK52INhpGtH/RjhSHqlQO7FeIDdBUdolkcugQvtO
	TZf7Tujy5PT0KKuOSzNmg05VIGZ2yJl0fFs1ihgSyX2gjsLmzI1AE27iqS8i8hsb2uDNb6WtJHGp7
	RC9C7pi8i9u5XuN4KKAGc0gnz5iOHDPNm/CsnnvU37VnvjswM3ElU6bzFDWa2ewkjLL0OFNg0bF8/
	diuhucCj++97NPjl/fzPREOYOvlkNb918VckXxAHX7cwsryCUTKfsh4y5hWHBk4Q+PQPTOKtSIF3R
	W9GIOjVCakBnIMwoqYeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nys9a-00CR1i-BE; Wed, 08 Jun 2022 09:39:06 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nys9X-00CR0C-Fg
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 09:39:04 +0000
Received: by mail-wr1-x434.google.com with SMTP id u8so23229290wrm.13
        for <linux-phy@lists.infradead.org>; Wed, 08 Jun 2022 02:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SrlI4ZvXPd3nh0rndjvVL6Gx8d3Y95ZMZayBrSBcgeQ=;
        b=atMyedj0dOYvk+JBr3HCDOyqLSt+AA/oNNjjWmMnazdMjIIKmii04wFv/xxg5gqiJx
         t+lgQujSvTPRA1U6iIqe3sOvzuGq3xUOk1P6qbGrbWaJS8SavEHqyaL7FNLbwCpwoA/V
         3bAkj8eXhMuxwKHgLNcSx8tVM0fsjpHhz54O1x/BNTnpqWEzXku5UzG4+NhqoiBodt41
         gWEC1sNoKTRrvNCzqqqG3ld++axUQnObLxbXnFNPLiri5fh/pGeTSnFLek60hiIx+sWm
         +tm/PNy2GCWBJRwO7nlgSEe6Zdfmodq6IZ1ZsVKIJJyyaTqedKEJHfoklslduSkdLdJd
         HkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SrlI4ZvXPd3nh0rndjvVL6Gx8d3Y95ZMZayBrSBcgeQ=;
        b=gE4FON2lOK9Byh5z0kXqZ+7Z3AUME/DX/TBIP2Y92Gqpu7Oe1FsDolMql2nJDdQ2Wi
         igeVe2lBDD+JHmwGSouP02AuTldjihG2vEBVulBXrPSqsQPyiTlufbbo3f5BuwldHjcT
         poyy0ZKewFShn8dz9cx/yMk7YApbqgAnJoxQWOrzVl34JQkIAWm/RRSR36Xz2vt2D3CT
         6Wb03vaLBmO7Mq6fYv9gdMDz6IWv8TfcGHORnz7VGG6HKWdjcClca/fNKTYdXa0jYvyO
         NajlUYaSwLbe3jC65h9ik8hwAskP3KRMEyXY9iH/lU9YPcCpqHozAFfUEfBM3lS/nHE+
         VeAg==
X-Gm-Message-State: AOAM533z5WG2vJUpylwLTmGjbZueDgB7OS5JOwOfopqyle1itRRiqGjC
	1n86qwiUXrNrqwSzZPn0sFWlXcbd+7vj5g==
X-Google-Smtp-Source: ABdhPJzPvCE2V+oC6R6Q3XAgbksIercChbK0pggFgPN+nrTQ+0XM2KKykuJxK35mOb8/wc0XtF9v9Q==
X-Received: by 2002:a05:6402:190d:b0:431:4e5d:d780 with SMTP id e13-20020a056402190d00b004314e5dd780mr19911641edz.279.1654681126880;
        Wed, 08 Jun 2022 02:38:46 -0700 (PDT)
Received: from [192.168.0.191] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o22-20020a170906359600b007041e969a8asm8725808ejb.97.2022.06.08.02.38.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 02:38:43 -0700 (PDT)
Message-ID: <b30c9948-04b8-fbcb-48aa-d65510df4aee@linaro.org>
Date: Wed, 8 Jun 2022 11:38:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v8 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham <kishon@ti.com>
Cc: Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Doug Anderson <dianders@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 linux-phy@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>, quic_ppratap@quicinc.com,
 linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 quic_vpulyala@quicinc.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, quic_pkondeti@quicinc.com,
 Wesley Cheng <quic_wcheng@quicinc.com>
References: <1654066564-20518-1-git-send-email-quic_kriskura@quicinc.com>
 <1654066564-20518-2-git-send-email-quic_kriskura@quicinc.com>
 <1654086533.981346.3753217.nullmailer@robh.at.kernel.org>
 <20220601173326.GA3993065-robh@kernel.org>
 <5d3797bd-915f-2746-b593-1b8a3f792c5d@quicinc.com>
 <8eeae82b-1021-97e3-64c5-e2bdbdfb1f8a@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8eeae82b-1021-97e3-64c5-e2bdbdfb1f8a@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_023903_568476_0F53D85F 
X-CRM114-Status: UNSURE (   8.82  )
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

T24gMDgvMDYvMjAyMiAxMTozMCwgS3Jpc2huYSBLdXJhcGF0aSBQU1NOViB3cm90ZToKPiBIaSBC
am9ybiwgS3J6eXN6dG9mLCBWaW5vZCwgS2lzaG9uLAo+IAo+IAo+ICDCoCBDYW4geW91IHBsZWFz
ZSBoZWxwIHByb3ZpZGUgeW91ciBpbnB1dHMvcmV2aWV3IG9uIHRoaXMgcGF0Y2ggc2VyaWVzLgo+
IAoKWW91IGdvdCBteSByZXZpZXcgdGFnIG9uIHRoZSBwYXRjaCBhbmQgUm9iIGNvbmZpcm1lZCB0
aGF0CmF1dG9tYXRlZC10b29sLXdhcm5pbmcgY2FuIGJlIGlnbm9yZWQuIEkgY2FuIHRha2UgYSBs
b29rIGF0IHBoeSBjb2RlIGFuZApkbyBhIGNvZGUtc3R5bGUgcmV2aWV3LCBidXQgSSBkb24ndCBr
bm93ICh5ZXQpIG11Y2ggYWJvdXQgUXVhbGNvbW0gUEhZcy4KCkJlc3QgcmVnYXJkcywKS3J6eXN6
dG9mCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
