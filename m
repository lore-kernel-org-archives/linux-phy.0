Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ED0AEB64DC
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 12:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhJW8Hu/A1nHNdRRPbBBx2GQwsHizJw++jorOYQDY3o=; b=xi4MILry6SY09g
	LbN70+YYSpbKQBKU4SX1WQaU9XhtDvX9pq35p847EuRlah5iA/To+vNboBSgbjlzHu+0JjSbs6OPR
	jFC+9qdgB+UvU4h60M3pLj/1S2QM9W6DiwXyf7lat6VTa5yceEsOUBWAMuScVw9UftIE2ze4qt6ys
	JElkVCvemLgJeaGlmWMLdw4yAhNxPuRLOavinZchiZ6Lp7keIfO+Ud+ADmrvaVbRgQoUnnfFa2YU4
	mbcwCOg9WE2hO9DJHn97IcCWxQp+fao4id/NL89ngaquAV/aN6/w4e/ppOqcDTuiZwZPnobgtN/u7
	fu+Td5dszC+9ctkLpOlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHNnS-001ZHE-27;
	Thu, 06 Jul 2023 12:09:18 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHNnQ-001ZEZ-0u
	for linux-phy@lists.infradead.org;
	Thu, 06 Jul 2023 12:09:17 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-977e0fbd742so77647566b.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Jul 2023 05:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688645352; x=1691237352;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AD7SP5cEltC2P6iI+W24BH/0PK5a9j/yuLzGT21WDwE=;
        b=i9Vs0AY9co0nozmt6kxY8w+r5S9aLFWdrpYPpACl24iKi92FdSL06JLGkD4sX/JO5l
         9DOXPpCOuPivcnDRKzdI1ng4c0OIN+7XmWf00m95DrN8hgLXTVOk2lxToj+A/ZSwqTkh
         YXRXaTn/NDxVruaFvAm/4c3yiAN7Gv41JUKpQ1iiGEve2OvVw3X8SuUIqDZO5KWPqWOi
         B24q1P52iNdG5HHK+91w1vsvwSKIWzs+6GIyIwv9pXylC9HfPO/a2yF6G53euw+Zd5NI
         T2G1PjYvIqTIHXI9zJx/taJUYddohNXrHM0DDPhvnobjMOdxGtUw8a6RuGB2rA0kzppV
         FfTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688645352; x=1691237352;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AD7SP5cEltC2P6iI+W24BH/0PK5a9j/yuLzGT21WDwE=;
        b=J1Sp5q6VbRBu08kQM5EC4SnJ+hExau6ZEcO2NSk0B50An6jDeVmRkPwZQd/148VIJH
         x2NXldVowVjMwK30WUy1jvqpfO3eZXKAEDdP/q7VgPrgm7R+JYcvXM6jan9QX7cOkI2h
         wrICffl6zl2tqnU7JHkKT7rcOMgtLravlLHUbXLJ78G9NPuNoZgfwB0LQ81adkxaYGX6
         6tL0vxvPXt+KcdXZrvWTB8dPfVWD0RLlNwe5mj4Xyf1H/m1Fgks7WBM1y7HQs0DyZ8xH
         duAnQxP0jK4Z7mQaMan5OxA03mhVZvaimTjKowsGfxmfkDYa56fFDXdwgkELFMjkQXD8
         Zg0g==
X-Gm-Message-State: ABy/qLbNllAmTYXbzVfwTXKzDMutCOTt43RAeuYKbdoGzkU3kX5tp7nd
	cwMtJBFUJRnOC+oUuVd/LxBLsA==
X-Google-Smtp-Source: APBJJlEigXpf0qIEu3w7bh82NDf+I+AZ5IvWRIyMOVolQrW0lhHOOtLk1gTA6aU6jjVr7ttCRNEt3w==
X-Received: by 2002:a17:906:196:b0:993:6b3c:fe06 with SMTP id 22-20020a170906019600b009936b3cfe06mr1175068ejb.25.1688645352276;
        Thu, 06 Jul 2023 05:09:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id gh9-20020a170906e08900b0098e0a937a6asm734388ejb.69.2023.07.06.05.09.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 05:09:11 -0700 (PDT)
Message-ID: <878103c6-0dc3-164b-92ce-17ec4f87bff6@linaro.org>
Date: Thu, 6 Jul 2023 14:09:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for PCIe
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
 quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
 quic_nayiluri@quicinc.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <20230705084606.GF11854@thinkpad>
 <a450e2e8-307d-49e9-d76d-de397b801a96@linaro.org>
 <20230706111218.GA4808@thinkpad>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230706111218.GA4808@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_050916_340297_BEECFA1F 
X-CRM114-Status: UNSURE (   9.78  )
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

On 06/07/2023 13:12, Manivannan Sadhasivam wrote:
>>> Please note that the dts patches should come before driver patches.
>>>
>>
>> Why? DTS is always independent thus usually put at the end of patchset
>> or better separate. It is the first time I hear that DTS should be
>> before driver.
>>
> 
> This is what I was suggested by Rob during my initial days and I've been
> following this pattern since then. If that's not the case, I have no issues.

I really doubt Rob ever suggested that. He probably suggested that
bindings must come before user, but not the DTS.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
