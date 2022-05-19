Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D23C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 19 May 2022 09:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdDVWsL0ji0Gzxk2b1wd38mo7060lz1nrWK7+jwTLEQ=; b=LMYJ633GIoCA/8
	o7QxalCVvwAtYq217XcnOlZ0nr285PAOS2HPl2hmLk3K4CienE7sgvjdeRALVYqQzpHHWS5iuReWL
	ELBw1ZEf5RKMKErEgN+MPDdzBKXtKVGmAj4HnNSh8YXBEQl2O7zf+efRrV2k9XJAhGIZ3Hg8ImS0I
	bbZd1WRgk10ZYacPlFdRDqMYwVIlvpFWo15qDctDvjK+JQdwZ3kj9d0TtPnw6RcSyK8pS0fcqnTKd
	mzeFCyXxSpYlNZSCbfBPX7Kyf+6OyCIzSeqTElXO+cRQ/5uDArz24Snsz1bfHdmiuaWAe0TpSXgsF
	qJSINqOYw4km8WvSHh+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrcn6-006BN0-DN; Thu, 19 May 2022 09:49:56 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrcn3-006BLX-JA
 for linux-phy@lists.infradead.org; Thu, 19 May 2022 09:49:54 +0000
Received: by mail-lf1-x12c.google.com with SMTP id u30so8145032lfm.9
 for <linux-phy@lists.infradead.org>; Thu, 19 May 2022 02:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=3HichTrqN7F9p1vtnqjU5qG7qAFUNf2AyIapQ12NpO8=;
 b=pj52zUeXesTLyc14JaXUdAxTtMtGZg3T2DIN7nnsHPu4wc7dPGcrZgTVR6iYcfDcEV
 0KHIB957wnozL49rQMLpSyaoT/OxqPlNgY/1TtBfop9FgGdEidY1e+g3aLmDcE3WyuEf
 AeJiSSJrjqV+sD3efpF3U55A8l67ZjfE/p/FbYBYzeNWCajdGFi8xZBgMTZBl52SlqjR
 B/AV/ORXHNl+c7f4YUThrLOVDVfGs5+v0yXM133bZAuzgCPehiDH+ir9f/HT3VhRvbva
 ABJPXYJczVzo9npFPu0g1whzQBoFZQUH0oXbTk6wfkOz6A68etpse5pby80OUhDfUrQs
 77PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=3HichTrqN7F9p1vtnqjU5qG7qAFUNf2AyIapQ12NpO8=;
 b=NgST4rO57H2PWCkkRCTUPLICTe4zaQ8rCYN1t5Kanihk8YyYy/Q3ES29BGzz47NQPW
 Ia3Wq9g8lwflIPnpGrTGvZHAhAJN0S32FPXYXY3l0QB5Xzus45Qb+2tQA+9Nh0v88+og
 hHk/vegIik/IgK+5IF1fPJ0BajEkrdq+hztOLximtsMTYHeUluPMYuXXOmWvQbEBqAsV
 CB+jyDgkgpbc3T/nOtUq2kA8AhHzn98VoiE8RgWl2bsmD6UXiqbkq+5zYactYZO9Zk99
 Jl6VjgCWxUNlRuH6qUftP8CYu1Lw8YL5oE+t/VePudvs+DebV8wW+Np/QFWguHcGHvLA
 NYaQ==
X-Gm-Message-State: AOAM530Xfx3536A1zviKG8mZ+n26u5hDJF1FAWsbXTwV8NU5XCD3dhs5
 95KWHHjz1MtEYgjt2MKjno3WKg==
X-Google-Smtp-Source: ABdhPJwbFiP8G5XIBQ8Y6aMcJ9tjLVMxwvS1jPlinGma7O6miaJ7rs+vKHNMkbhuXXrYedSK3N/XsQ==
X-Received: by 2002:a05:6512:32c1:b0:473:dade:84e8 with SMTP id
 f1-20020a05651232c100b00473dade84e8mr2704281lfg.652.1652953789533; 
 Thu, 19 May 2022 02:49:49 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 j9-20020ac253a9000000b0047255d210f0sm232517lfh.31.2022.05.19.02.49.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 May 2022 02:49:48 -0700 (PDT)
Message-ID: <4183e3fb-6fe2-ed81-2d75-1b3865b191a2@linaro.org>
Date: Thu, 19 May 2022 11:49:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v6 1/3] dt-bindings: phy: qcom, usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>
References: <1652934489-23386-1-git-send-email-quic_kriskura@quicinc.com>
 <1652934489-23386-2-git-send-email-quic_kriskura@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1652934489-23386-2-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_024953_680400_AAB35334 
X-CRM114-Status: UNSURE (   7.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 19/05/2022 06:28, Krishna Kurapati wrote:
> From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> 
> Add device tree bindings for SNPS phy tuning parameters.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
