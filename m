Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE03C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 17 May 2022 06:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssf3RTAwhbUZism+q8XRhWs9gc8b+qGVbS9wPYJt9BA=; b=NoeBLmj/OkUDkt
	ynlMp+f+t7TtIemPux2dwZMa/BI+R+yk6cyo870nifVRcADIMsB44qUB0GNaXQekim6ukTT921K/C
	uxpfupydoXyVcMANCI7kOlzM24R1pT5LPc4v6Is5rc/QsfBcOOqq5cMbWPhsXCF4uzOWPqcneb7wp
	CgMnVNVLmvwt01MT14NpvryA3y4ADKLYs5L5xUJxPxzNZwSVKbqVarA6p7bXX0/uwaKdDB63ocV4j
	JMsMX6fz6jn78JNIIBkLvg/XlIdSMJ/mv+3TqgH8/ik1VCSgfKFNJWNUHhhIfUqxd3u+A3PlHf2TG
	RIINK52G3MYs0MTISalQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqqaY-00Bn5n-M1; Tue, 17 May 2022 06:21:46 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqqaV-00Bn4b-6R
 for linux-phy@lists.infradead.org; Tue, 17 May 2022 06:21:44 +0000
Received: by mail-ed1-x52e.google.com with SMTP id i40so6036300eda.7
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 23:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=wc3/EVjkhz+Iezw2lq8A3OB69X58dvuasJ9uoZXK6vo=;
 b=HfZ+bb7kntTNtJOmreG6Dbv+qqechztgleb6DTAnIlLUJJS02lRkrAQDMUmoF503No
 nGEmq5tVNeXe3gDOvL8aRcyvmIFKjW9xnGjjNcN+8Er5cybVDFKyEoA901fwI6CCPwpb
 ku92O6xKNFADgWQmj6PQJhlpmO+uxsFt2wMxCqCZpCmAEP7mQxz0UtfD/bReieJuV4wl
 wzvO/7NftI1IZSFGxYrYgKllMifs7S5D6jTsMxelznnUYtUW+yRcaxuLeyDtExGh7IhS
 6IZURT5D5oibApX/Qmgg8OTVoQr20HCJhPQlmgWknri6YXN83IoJhh5uOEjzU7ivmf2M
 9xMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=wc3/EVjkhz+Iezw2lq8A3OB69X58dvuasJ9uoZXK6vo=;
 b=Aq0ZacM28ktxd1zeB0Fdq85o7llb/pLOdNYyyN30Ni7dT3LMDv048vg9lyCROT8urW
 eW8ek3lNA18TrKCtssEixSNqkKM5APPonZSo5tj/6N9F3Fuo5JOF6ABY2+EBh/lGqZnA
 97lqsp6xBOo81SpO5Wwq3zK71Dy/8OmSa6WWp8GeQuyVeyQOks3HLKzfbvvgcJcmPbjb
 /fh2Cd4rSRjRPlyVB3IJYfwriC1WymTCeYl47yN6ktmkzuEGMW0+JPYs/pPbD9vsQpZK
 /+lO16utAADnhAaUnZ8RC1mk0Jnx/L6iK/Y2G858RCBor9yucFxLe0JBS7ljjKCcR5Ic
 GP5g==
X-Gm-Message-State: AOAM531lvfS3Y7rH1M/bE4kFjOVI8D85TWRRdgzsMOhkSPu8yCj1UwUy
 D10Q78U777J7iG8xK3b2cj5u1g==
X-Google-Smtp-Source: ABdhPJym9V7KYl2xSH3OCAtHgWbnK41dJm21ba5lq0sBFZVOY8Fls/Xj85PXXug9ZAfgz31Dj+J3oQ==
X-Received: by 2002:a05:6402:390b:b0:42a:acb3:bb5 with SMTP id
 fe11-20020a056402390b00b0042aacb30bb5mr10734321edb.236.1652768499067; 
 Mon, 16 May 2022 23:21:39 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 m13-20020a17090677cd00b006f3ef214e0dsm617207ejn.115.2022.05.16.23.21.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 May 2022 23:21:38 -0700 (PDT)
Message-ID: <0708c599-05cd-9357-cdd1-527fe87544dc@linaro.org>
Date: Tue, 17 May 2022 08:21:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [v5 0/3] Add QCOM SNPS PHY overriding params support
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
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com
References: <1652723410-1630-1-git-send-email-quic_kriskura@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1652723410-1630-1-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_232143_286200_4EF11EB0 
X-CRM114-Status: UNSURE (   8.01  )
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

On 16/05/2022 19:50, Krishna Kurapati wrote:
> Added support for overriding tuning parameters in QCOM SNPS PHY
> from device tree. This parameter tuning is required to tune the
> hs signal on dp/dm lines for electrical compliance to be successful.

I commented at your v4 - please use proper PATCH subject. It is added
automatically (with version) for example by git format-patch. Your mails
escape regular filters - any reason why doing like that? More difficult
for reviewers?


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
