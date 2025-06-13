Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58BB9C71135
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 09:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X7OgyG8JGaU4CHfWff90KsCtuSeBnrh6zM/sj+3q5/w=; b=hadfj++st1icS/cMS7hn5e7srG
	P+dhKge+EtCOo+VFehH5iSq8qjtGVmYn4YZHYtML+i8fNTb7num4iX5+6++m2Td0KsFgGDFNFa1xz
	GKzoxVkPW7wBkK0jbhm/kW5W93IiTndHhqCtzfI13jwlpABhvL2UDzC+Rih9PnDFHzFh6butokMcu
	iS47cAfijhbgzBvLUm6cQDOY7IgiK1VAsd5+FkiE0oGgLU45psoKUyjMFkr1pxHdSER/CoMZgj/Yv
	Xvd+oIYSDNUDDphvUZ0fZli8swhYoFlqy0BFUmqMWK4KebCm/JFtlNjFnTyjMvkE3Ckc3yNxfEv+c
	cc8RgnDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0vK-0000000FwA1-02k1;
	Fri, 13 Jun 2025 09:42:10 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0YG-0000000Ftcq-1qeV
	for linux-phy@lists.infradead.org;
	Fri, 13 Jun 2025 09:18:22 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-45300c82c1cso6553015e9.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Jun 2025 02:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749806299; x=1750411099; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EZezB8dUdKZQC1klqpxG0ZCPkOkCrr9wOd6SwONA76E=;
        b=I6Y+ACk3WeebKfqcDR0waODGE1SjsXw1uFnx0fXH18gfD79zHXuGGsxAKX/R4I1z00
         m9ICWYYq5Huh/ySs1FpNjxvfKKfBtJJ0ASOGL9JYVCK0Pmgm7k6CRT/CXi8lDfEcg8fA
         cogvLVpYrk8Lg/myvFstdh6uVhhcJ7VYpxugEbtLD+vR059oYeV4Pn3lBpZWQxI5pPY+
         xEM8TQSymJSNxFgsOyHI4k77qUCPobYe0+qL1hxyGnOKQPteEUhTms1qOJOFcj4WMro/
         udCmf4z7vRnS9PtzvAVe7PZ+r3rrRX39I+/3Uc9SBGrrwXRV5YpqhP9g4QpOIRyh9Ydt
         iL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749806299; x=1750411099;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EZezB8dUdKZQC1klqpxG0ZCPkOkCrr9wOd6SwONA76E=;
        b=hLQbMF6SnMulKWP/rVPnPdGGgNkRXiAXYACrzVdlxQzsHPSc1gMXaLWa0a3FoLYNR6
         gJ/F1AOPF0aZF1ak6Q204urM+zx1gSORKR88O6mhCEuPck3Nn0lUUVIVWLm9ijTGEyXz
         vv1wEb9gfUI/z/2qDK7kBLmsphkuwtC27dxtdJauHSgBMMK4+mnPqOBKSEdtal/wG+O7
         IuN+rBz3F4VYVIQ1PN2TdBTCczw3GY3MbRBLY14R9WWeEyWBJF6vLC3OOUtiyGLwK8gf
         UhindwjuzNLJVjaU0VXFQ1sI7ah2JJroOss9aPbeM4AIrTr3BMz/M2Yzunxl69USmkZM
         OAIA==
X-Forwarded-Encrypted: i=1; AJvYcCUnQJDKL8H7U1EJp4/FKQXpNRgiQ336NbiuYrCgLJ0+2Skz9T6phAwVeSwRCkbxVfDkmLcJqfAi1z8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx756KCkzaOS9NFSYub0NHbkYCr6S2MgaOy0Ky7jYVMa35dIwT4
	JVMyPhMsMV1MoWxJC3Q4NyVPobx3mvCf8+unOJWoOwzF07/+at81tkZxKutaaH0vLSo=
X-Gm-Gg: ASbGnct1dg07fgnzr28foU1rRR8GwjgTjN0PP3uopulDoH/50FISaFcIRwbXxmqpUeT
	2K8GR0ww8DV4BVBuMxhnn5vaFeGjLxJ1Yjto2KmYDKK9YyotTlh620db9XOIHmkwSNWFELT256y
	WRznKCdMVI3QTkJN10QXUe3t+fB89ygPG9ftIDt2qDgWX90IkH+621y7PCuZ28Y7dl1byRwvVCX
	FQL3Yc81gOH/F6dZaLzxAsERsqYQ5NziBA7wtcef+zHGJ6j4+kFeAQwUus4a4sRy2eNcW5K8S9A
	b3ccIFS9TryyHxYx3rE8VUfT21rQPohJQt/CgZ4qEOo0sHsV/RXPXwanSps872kCM8a9GHHwITf
	IiYkvU2DPBE5VfiD+8XVguzC7BhTdRFurnL25lgtGevZdjfI88Q==
X-Google-Smtp-Source: AGHT+IEUrossJxJVwWBU+vfj+xukJOxxn0Gc50ke7zrjhbK13v9zCYmZziSm3yGa9wtgXShwZmF+uA==
X-Received: by 2002:a05:600c:468f:b0:450:d3b9:4b96 with SMTP id 5b1f17b1804b1-45334b07460mr22803915e9.13.1749806298856;
        Fri, 13 Jun 2025 02:18:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:4144:6a84:fe1d:3aae? ([2a01:e0a:3d9:2080:4144:6a84:fe1d:3aae])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532063ebf6sm56506385e9.3.2025.06.13.02.18.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 02:18:18 -0700 (PDT)
Message-ID: <7178e816-4cb4-49b3-9a1e-1ecd4caa43ed@linaro.org>
Date: Fri, 13 Jun 2025 11:18:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/7] Add ASPEED PCIe Root Complex support
To: Jacky Chou <jacky_chou@aspeedtech.com>, bhelgaas@google.com,
 lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, joel@jms.id.au,
 andrew@codeconstruct.com.au, vkoul@kernel.org, kishon@kernel.org,
 linus.walleij@linaro.org, p.zabel@pengutronix.de,
 linux-aspeed@lists.ozlabs.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org
Cc: elbadrym@google.com, romlem@google.com, anhphan@google.com,
 wak@google.com, yuxiaozhang@google.com, BMC-SW@aspeedtech.com
References: <20250613033001.3153637-1-jacky_chou@aspeedtech.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250613033001.3153637-1-jacky_chou@aspeedtech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_021820_495390_3829BDD2 
X-CRM114-Status: GOOD (  17.07  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 13/06/2025 05:29, Jacky Chou wrote:
> This patch series adds support for the ASPEED PCIe Root Complex,
> including device tree bindings, pinctrl support, and the PCIe host controller
> driver. The patches introduce the necessary device tree nodes, pinmux groups,
> and driver implementation to enable PCIe functionality on ASPEED platforms.
> 
> Summary of changes:
> - Add device tree binding documents for ASPEED PCIe PHY, PCIe Config, and PCIe RC
> - Update MAINTAINERS for new bindings and driver
> - Add PCIe RC node and PERST control pin to aspeed-g6 device tree
> - Add PCIe RC PERST pin group to aspeed-g6 pinctrl
> - Implement ASPEED PCIe Root Complex host controller driver
> 
> This series has been tested on AST2600/AST2700 platforms and enables PCIe device
> enumeration and operation.
> 
> Feedback and review are welcome.

So it seems all PCIe RC code is bundled in a single driver and there's no
PCIe PHY driver code, is there a reason for that ? If yes I think it should
be described in the cover letter.

Thanks,
Neil

> 
> Jacky Chou (7):
>    dt-bindings: phy: Add document for ASPEED PCIe PHY
>    dt-bindings: pci: Add document for ASPEED PCIe Config
>    dt-bindings: pci: Add document for ASPEED PCIe RC
>    ARM: dts: aspeed-g6: Add AST2600 PCIe RC PERST ctrl pin
>    ARM: dts: aspeed-g6: Add PCIe RC node
>    pinctrl: aspeed-g6: Add PCIe RC PERST pin group
>    pci: aspeed: Add ASPEED PCIe host controller driver
> 
>   .../bindings/pci/aspeed-pcie-cfg.yaml         |   41 +
>   .../devicetree/bindings/pci/aspeed-pcie.yaml  |  159 +++
>   .../bindings/phy/aspeed-pcie-phy.yaml         |   38 +
>   MAINTAINERS                                   |   10 +
>   .../boot/dts/aspeed/aspeed-g6-pinctrl.dtsi    |    5 +
>   arch/arm/boot/dts/aspeed/aspeed-g6.dtsi       |   53 +
>   drivers/pci/controller/Kconfig                |   13 +
>   drivers/pci/controller/Makefile               |    1 +
>   drivers/pci/controller/pcie-aspeed.c          | 1039 +++++++++++++++++
>   drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c    |   12 +-
>   10 files changed, 1370 insertions(+), 1 deletion(-)
>   create mode 100644 Documentation/devicetree/bindings/pci/aspeed-pcie-cfg.yaml
>   create mode 100644 Documentation/devicetree/bindings/pci/aspeed-pcie.yaml
>   create mode 100644 Documentation/devicetree/bindings/phy/aspeed-pcie-phy.yaml
>   create mode 100644 drivers/pci/controller/pcie-aspeed.c
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
