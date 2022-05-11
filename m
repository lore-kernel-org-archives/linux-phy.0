Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71FF7C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 11 May 2022 18:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBjMXUrBSuEputqrkLpp6Hbb8H5FTafo4pYdRVyt3Uc=; b=aRYqZWQ+Ht7O2q
	Vyt0nE7FnVxPaLwsx+R1eOeOkMObXDdI+cF1uO5aLzTLRUttjGQzLPnCrld4EoTbSXjt3PDHHvxU9
	hSOka1xlL7fF3BxWYWcWyTgOXFmen5MLzrsLHC+GdM/Gzx4juEMRKzCMzuAVDK/zyfxY0AHnDPxPz
	TWOA1oLQnorENPdvNSaV183JYOXNmngupzf1qr7469xpc7YU9AuRbphx+H+J21wHv+nDEeCsXTa3B
	AlBiKe8xDTNvRuogN5Zef3L3CrbPugnq5YQfViSHY1R5luB6QPrsPQsjYr1w1TdTulgRP7GMrR+3U
	DCmysfNJLQFzXgwE1l6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noqt9-0085je-QQ; Wed, 11 May 2022 18:16:43 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noqt7-0085jL-9h
 for linux-phy@lists.infradead.org; Wed, 11 May 2022 18:16:42 +0000
Received: by mail-ej1-x633.google.com with SMTP id kq17so5709859ejb.4
 for <linux-phy@lists.infradead.org>; Wed, 11 May 2022 11:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Fhxc5z1KE0Dsp8lGsAgqT5RMsvfNxtef/xd2f9hMnCs=;
 b=nIm2GVngEEk3Lg9AJjVcCmfvkEXavOLYacnJORi28B8FAVBQMNOp30PKVzqwK4+if3
 FCjffb9+3YM0w5R2S8CShqzFkx34N/wXw+e3+pm3t3fYy2ThWqU9xY6EX4Z4YR551AOg
 RpGy3/kSgMq2OPHqh89Q/qQkCkCv5l6RYIN8sSkG+2bU2A7AAqmZJkzzUlh5Gd7bXYuN
 IzDiNp6+bPtMK30jiZWf/QN9Zy/Rv3HgoZvjJ/UBcoFQco361sOh9nABKb7REI47zQwi
 FifZqKJSFOCzhZfBlcnBuKsF7J8cOQ+V2F4Bfvd5DxxGOciT5f8mok3Bw/L5Maez5HlE
 NoIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Fhxc5z1KE0Dsp8lGsAgqT5RMsvfNxtef/xd2f9hMnCs=;
 b=4yR5c8wIb66b8kfodyZkz7nsYZ32cw7t7+ghJ7p/DgsjbfZaa1evxAaVTLBKTma0/k
 QyuAYUFIskklDMzu0gJQi0K9T+InXjVpgRJmbOqRdHbHDLUvcuzx+JIrdLL6sm4/Tvl9
 fXYXtwK8aS9yV5++tcpXq30CKGrZkN/a4k63X26PLnGkgpbkFpbWRBRmdv6OzOuqQu75
 lJBlhzs7XzNIo2tdc9OPBsNf0Bop9EIltmzN28x3msgS2OQ6hZEoRdKBf4BZTNhZB7Lc
 h0A6mVSXB8YAmCJcMqptCvZ+0StuaMg3QL9GOXwbzAuH8iv8lFO0h3aHkcspJCcAWqOZ
 K1qw==
X-Gm-Message-State: AOAM530WkuvH5KWh4kRMb4qxy/HKZ9WZfX/LaRZoh/tl8NT26sKWpRNN
 139ESRTlv5FyEBKWE7YUcOHvDg==
X-Google-Smtp-Source: ABdhPJx+CJK78zsG3tde6KKXb/fX4e9dE8ABsOUrj+MY0Vc4ravZJADycaEa0z4YWMjmQF5Dr+yZSA==
X-Received: by 2002:a17:906:6a1b:b0:6f4:a9b8:e027 with SMTP id
 qw27-20020a1709066a1b00b006f4a9b8e027mr26045450ejc.222.1652292999566; 
 Wed, 11 May 2022 11:16:39 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 i1-20020a170906250100b006f3ef214e59sm1206628ejb.191.2022.05.11.11.16.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 May 2022 11:16:36 -0700 (PDT)
Message-ID: <857a1475-6697-89a9-98e6-b1dad8b917ac@linaro.org>
Date: Wed, 11 May 2022 20:16:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [v4 0/3] Add QCOM SNPS PHY overriding params support
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng
 <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com
References: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_111641_373127_49D4E687 
X-CRM114-Status: UNSURE (   6.96  )
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

On 11/05/2022 17:26, Krishna Kurapati wrote:
> Added support for overriding tuning parameters in QCOM SNPS PHY
> from device tree.

Please use proper PATCH title. The easiest is to use git format-patch to
create proper patches.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
