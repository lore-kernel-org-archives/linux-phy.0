Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2F4FCA0FFE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 16:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rG2rKeHgfsD8CarmSCKUrzDdb0WWyeqTKwJbsihIkmk=; b=vmlFg2GI6tVJByRqAdU9j3cPU8
	Gjn/Y4DDox0MrdpSFMXqOsfDoptR4SCqcnkJEr3i/nq6Ro4UI7MaVePSnT2wEuIRjECe6LTs9Wpa7
	s6eBtsuizFWi/ztHIgse4YjfF2z03pOwNz++f3kGz+X5BdYYaJqYRj0bUo1q5TfWQvfnKrt0Goqc9
	3CGGx4Ptla+UPdoGGbGwaIKSihgTt/xsO5iED4sZiqYupoE8x8hMEroKvttqDA3kXxiVbrmX5T6ED
	bEuFtOurltOZ/8sg7wqrvTJHGBy19yJQ8lIVe9ip2zCiXT2bzbq0N/zFdZEkPOqkIf8YxAPo+QCKs
	U/vV4kNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utTiA-00000000ula-2tLZ;
	Tue, 02 Sep 2025 16:18:22 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ8m-0000000HGfl-3UbE
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 12:29:39 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3cf991e8bb8so2476870f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 05:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756816175; x=1757420975; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1ZrMGz19D43nUqFgTyxFJMNWsEoiEGhGU7kOoh8E0aU=;
        b=p2DMD+vdQNbCATGkhp6ZsNIgLybaIcLAZ5ef8xVqvG5/1uVhfoHAwOOlBexVoBMWwm
         KqW172PRxUS8MB1tLZviZrrTjmKvOfl/rkLoi2KnUhWM7fDtd7hPeqvzjRJnO3jXy3W5
         QiJYmVNuNfe0sFx2gB0DcRAjX5nG7axDlP4GIL0gHIIX1Ntdl1jkjYN9A0AlZuM/d/O0
         kgmeIfaNkpwoYgUICmnyLvba/PUMKIveD44HSqXtHWVMrHBcHauSQA7Lhzp09OQxS9Wk
         FX0apRIFdJdajKLFQOeTmHyuiOdIx03jaDitGNmodXkapeLiLtAtZKM4BRNvoWURIUDX
         +VkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756816175; x=1757420975;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1ZrMGz19D43nUqFgTyxFJMNWsEoiEGhGU7kOoh8E0aU=;
        b=m/eNyk/25ZwVxZMbnqte/rpnA/bVVRAhzpho41ppZOFs1G5pJU8K4yruTG/GM7CP/X
         4qo4y1ufVvWbxXwvsibXazr4s8WYKyU5JrcC3W1xfKqy4u9LbdCyLr66Y13bVKiFiZNZ
         9n6S2fDrzCNAYf0/0wPZTrZiMuTDoxgp1+RpTIKbwlpZUZaurMjv/WXzbxIVREZFY5ax
         quTejT8m6Lctv0u4+2nMpQU+NUUZxL6tTyiWZ1pn0PCIwSL31wH0zojOWSxiHs3Hvgc6
         YzKk4jwT2t7VH9Z9U3m09iByBuuXSefYSMur1xgsUZmw9nSzGFIa2zj8lr5EzxMI/I60
         MCzg==
X-Forwarded-Encrypted: i=1; AJvYcCVw48Fj/y2bQ1GWTM0zm3iD3YWbpNw9ANfthPwf4mwyNdziAOhraw9mngXjHrGc0033WYd3GZOdCyo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLJ/rEfc5P7Z4sPfm2lwMpl/SDG9gfkegr1Kj9lRGwn+8s+9lq
	osjLqdIKiPg2q08LiTiNfhg+F2Jw8m1dqmlzVLAhFqv1apc9QW8QYfjMNhH+TeNFrHQ=
X-Gm-Gg: ASbGncsZFwHzXuYyokm9iMu4UF61ypQJIXn0ALcPQEcN4Yna20fxlYV2UibhcKkd3Ha
	hhUlNSOeei7oEOHG2sn+etDvHKKO9yfuWDrLvWFRUpuZTljJ8p8URBEwYmPzu2VhQKZ25JeInD3
	NLfX4WvBb9J4XQApCjxVUPcSpLXFwRKzIQyjzQPPsz4RyG0S3N98/IyQTas5MkYhcFCcencvuS+
	CaHQeU2MdlCUTG2r3xRVcZdBFtdRezNMc69QlqMDVxOU511u0yDq/DM/mnvd8pdv1ixzpvl2Ncy
	o/kKYKDJYMJ3M1ThEGuORmsMsDaiYTcn3xoB0s1Ubu3kP2aN0S0zIFZhM7aDgCcAL4bl93qzjiu
	esg98zRJQCwPr4MEaR8j+06wfdCGw1r2QbPvYi8700AYP7NDAEIqxloHoyu99rHCcsQU5EVQGJs
	Y=
X-Google-Smtp-Source: AGHT+IE1b3znR8mhSVfN1o59ljoC/UoU3/SWyuUcMM/rQ1Xo7sYc7jTiyhzTL42RejqME3JwAEmmLg==
X-Received: by 2002:a5d:64c6:0:b0:3ce:f0a5:d586 with SMTP id ffacd0b85a97d-3d1dc5a2fe0mr7157423f8f.1.1756816174847;
        Tue, 02 Sep 2025 05:29:34 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939? ([2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf33adf170sm21033678f8f.33.2025.09.02.05.29.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 05:29:34 -0700 (PDT)
Message-ID: <81b1e0b8-6a5b-4eb9-8f9d-fe9a52f0afcd@linaro.org>
Date: Tue, 2 Sep 2025 14:29:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
 <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
 <bf772209-2420-4794-a52a-1d5932146307@linaro.org>
 <tl4fskw6yq6rniwwqkrvnulfpgym3jswlt5bmulgquogv7xkct@6bl4boesilsw>
 <14f334fc-35de-4f21-8eb1-f6b41ac24704@linaro.org>
 <oel3t35pxegxaowcfjbrzrxvuw47p7pzcinz7kf2uj2ivcderv@efbttlqpwcc7>
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
In-Reply-To: <oel3t35pxegxaowcfjbrzrxvuw47p7pzcinz7kf2uj2ivcderv@efbttlqpwcc7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_052936_966751_A9488264 
X-CRM114-Status: GOOD (  15.94  )
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

On 02/09/2025 14:22, Dmitry Baryshkov wrote:
> On Tue, Sep 02, 2025 at 12:05:45PM +0200, Neil Armstrong wrote:
>> On 02/09/2025 11:46, Dmitry Baryshkov wrote:

<snip>

>>
>> This is wrong, those are the internal connections to the controllers,
>> those are fixed. I'm speaking about the external lanes, but there's only
>> a single port.
>>
>> So, following your suggestion, we should use the Output port 0, but as it's
>> only a single port it would need to have 2 endpoints, one for USB3 and one for
>> DP.
>>
>> For example:
>>
>> \{
>> 	dp-connector {
>> 		compatible = "dp-connector";
>> 		type = "a";
>>
>> 		port {
>> 			dp_con: endpoint {
>> 				remote-endpoint = <&usb_1_ss2_qmpphy_dp_out>;
>> 			};
>> 		};
>> 	};
>>
>> 	usb-a-connector {
>> 		compatible = "usb-a-connector";
>>
>> 		ports {
>> 			#address-cells = <1>;
>> 			#size-cells = <0>;
>>
>> 			port@0 {
>> 				reg = <0>;
>>                       		usb_con_hs: endpoint {
>>                          		remote-endpoint = <&usb_1_ss2_dwc3_hs>;
>>                       		};
>>                   	};
>>
>>                   	port@1 {
>>                       		reg = <1>;
>>                      		usb_con_ss: endpoint {
>>                           		remote-endpoint = <&usb_1_ss2_qmpphy_usb3_out>;
>>                       		};
>>                   	};
>> 		};
>> 	};
>>
>> };
>>
>> &usb_1_ss2_dwc3_hs {
>> 	remote-endpoint = <&usb_1_ss2_dwc3_hs>;
>> };
>>
>> &usb_1_ss2_qmpphy {
>> 	/delete-property/ mode-switch;
>> 	/delete-property/ orientation-switch;
>>
>> 	ports {
>> 		
>> 		port@0{
>> 			#address-cells = <1>;
>> 			#size-cells = <0>;
>>
>> 			/delete-node/ endpoint;
>>
>> 			usb_1_ss2_qmpphy_usb3_out: endpoint@0 {
>> 				reg = <0>;
>> 				
>> 				remote-endpoint = <&usb_con_ss>;
>>
>> 				data-lanes = <1 2 0 0>;
>> 			};
>>
>> 			usb_1_ss2_qmpphy_dp_out: endpoint@1 {
>> 				reg = <1>;
>> 				
>> 				remote-endpoint = <&dp_con>;
>>
>> 				data-lanes = <0 0 1 2>;
>> 			};
>> 		};
>> 	};
>> };
>>
>> So the driver logic would need to look at the port0/endpoint0 and port0/endpoint1
>> data-lanes to figure out the mode.
>>
>> Is this what you were thinking ?
> 
> No, I was really thinking about the data-lanes in the PHY parts, so I
> was incorrect there (which is incrrect as you've pointed out).
> 
> The endpoints approach looks interesting though.
> 

Indeed this would accurately describe the data flow and lane mapping, but
I fear this would add a very complex logic in the driver.

Anyway I'll try to drop something.

Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
