Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA3B9C5CFDB
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 10:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6sDFaucU2wErlwnjCx+M0PGUFExAyuUjOOjBXs2k4cs=; b=hmZ1mnV4NQiGA9
	4N/o4TIwyQAshu3tRloHcWiCUREQ0KgKkDR394jnS2bcMcaSXbYFjvg3nUI4XvY0QJQ+uplloiowp
	1TIpojY0BMzNX9S6WxPFRs+toXQd06sqZ0m2dFdZuEoiDvGFtdAQ9Ql5KKbJcRnP0xvMiE9jtRUrF
	brwURPRPdYjU4AhGRUJbCFz1aGnWBTrmYk+iqu0wwgIu3vnCt+iH8LTgKqrT2JnmpQz2U+QxQiW7A
	sMBjtqLKh7iIoW4DK3TV2pRxM4Q4kW1kaK4q0rsZHsU1QyQiXjxjsvPKktUdwgl/d6+vQ8on/+oaS
	xk2WkjcoFMLoyfbS/fkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6eP-0000000FyyA-1UDY;
	Wed, 12 Aug 2026 10:57:37 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6eK-0000000FyxU-3obA
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 10:57:33 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-39c7ce122c7so6158981fa.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 03:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786532251; x=1787137051; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PBYVZeR2IXepxnBLAPHf56zO0KNstp6BUxcLKtblei4=;
        b=X3UGg+ThEfcxcExV05T7tuSY5kZMADLoD09zCihoDDoF2/6KQTnAZmDr1hNKImcJVV
         0Fh3GChUTeK1wo5z2nDcH4Hz7Jeb+zHZJmNKWe34FafpX/cQcy++IJ5y8Wi5bH8WQdUj
         tL8pLoVTbtGdJhtyvESk8yZQFcIQ9FiTF8OBqK6e1kpzJl9EfESk103h8xNkvkPfnUMt
         EyiH9fVuEsIsuuBRjs/E4s1psLGbV9Jsv9w+L3TzXEE6A3+3q7lVCrsEKow0x5as6HLV
         MkfccUb9FbnEpQty+AFW7sVbS7k7TCnTOtRT/a6nSDG786OfhgImmRQjjdDTFhMb4XNF
         y/Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786532251; x=1787137051;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PBYVZeR2IXepxnBLAPHf56zO0KNstp6BUxcLKtblei4=;
        b=Z8lMOt4/aRSRvpWXkO5Pndt421F2kZC9A5K02DL25qoRTVFNusKm+t5Zs3vm4dERI6
         tgKEzGCZnqOejTjDY2rU1H2DCxWsdMBqXpqhOUdQlGimqD8Gl/XT8ubEGE8DrZE7e5/d
         hNDlgFmTB7ACtr9UYVzOO+ketRvXEAoiA1Sp0utLZ91B9BWWo9Y7ML8Y8eWv7oXOaodo
         YUwus1LU9yxnHipjAMPhDAKnvV69KLVVIlQ5IPISuODQ1VOrcnAdqZFZjC+e1f6z8aoe
         HkG4qBj8glV3fBdsVW3MgUDmKO0XuABC89bIta+FH/2TV3d5vttBoDWI0p+9VYp1+y/z
         BwRA==
X-Forwarded-Encrypted: i=1; AHgh+RrfPdgmBfMxMU6h3aZBZQxxeVB3Xj+keUqQqyZ7Iuiee6ljxvd/0+s+tcAPKP8gLLSlXii9KCX+cKI=@lists.infradead.org
X-Gm-Message-State: AOJu0YysCOoHQFt4ci2tKoAcl+AubqekMTRMH70eRNpFGYKOJJc/fCOb
	4GV+Gz+8L1rPfd2w71DmGjQGVTOuhOaJ9mcYscgufzrYpGYOgcnB7PF8
X-Gm-Gg: AR+sD128PcfE/FsVjvQU3rF+UOhEF8CxN+3NYdC9qAgZGFqd8l76dsXv5Z+kJCmpRMY
	X2weAY9OIWUsW0UZFYRICSJjCTEYkWcLjUfkSJylPmL9sIYF1TQWNKFfKmO+SIcLKhV/7WTA2J0
	WV41SBruRR/29MFvIEO7TogwQnzIJ8ITy7gSr9NoXJnMT4UAZUfUybS/HgU1t4+OcVJei6SrPw+
	3i4/vz5OvWJIN7OJ4PW3aeeNFShlgY7InrGR2lAglr2i9UUpToxc+cOmQZrYTyEQvKTw1DibcCy
	1ifeFeT4IHHxP7p8dLG2VS/0swP6zQZBtIrgVl06NchRxi869QL+D1U9DfWUb3dZoXTugDmWsjx
	ehQM200Wt0qX1GdG295ad6ZfLuw2jdLbpFApO6Tc54j+thdshTltpoju1kJhu8g72bI7r0aZQIm
	BddN/fQrZ0OFUTzesyKus4CRT8J1+nYFnsOGwyveUp/sM4WQfZ1DFMqwcxTx96eJRofEYwCOWEc
	aKQhtzwQOOT4yFcvSshPtXr5yrYG77Afk7FYB2r0ID38lU=
X-Received: by 2002:a2e:b8cb:0:b0:3a1:6b7:c4ac with SMTP id 38308e7fff4ca-3a10d5e6119mr3978821fa.27.1786532250594;
        Wed, 12 Aug 2026 03:57:30 -0700 (PDT)
Received: from ?IPV6:2a00:1fa0:44a5:16e6:5436:f44e:c789:f9e6? ([2a00:1fa0:44a5:16e6:5436:f44e:c789:f9e6])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a1084e60bbsm4012811fa.42.2026.08.12.03.57.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2026 03:57:30 -0700 (PDT)
Message-ID: <c6451b0a-8558-4a70-9b68-a486da65b913@gmail.com>
Date: Wed, 12 Aug 2026 13:57:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/14] arm64: dts: qcom: ipq5018: Add Super-Speed
 UNIPHY to USB node
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Praveenkumar I <quic_ipkumar@quicinc.com>,
 Varadarajan Narayanan <quic_varada@quicinc.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-11-8f355d7ff0ef@outlook.com>
Content-Language: en-US
From: Sergey Shtylyov <sergei.shtylyov@gmail.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-11-8f355d7ff0ef@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_035733_003660_3490E28D 
X-CRM114-Status: GOOD (  14.07  )
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

On 8/12/26 12:34 PM, George Moussalem via B4 Relay wrote:

> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add the USB3 UNIPHY node to the USB controller node.

   The same comment here...

> In addition, switch to the pipe clock supplied by the USB3 UNIPHY
> instead of the UTMI clock.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index c98889a7c26c..01b8181ffa40 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -631,10 +631,8 @@ usb: usb@8a00000 {
>  
>  			resets = <&gcc GCC_USB0_BCR>;
>  
> -			phys = <&usbphy0>;
> -			phy-names = "usb2-phy";
> -
> -			qcom,select-utmi-as-pipe-clk;
> +			phys = <&usbphy0>, <&usbphy1>;
> +			phy-names = "usb2-phy", "usb3-phy";
>  
>  			tx-fifo-resize;
>  			snps,is-utmi-l1-suspend;
> 

MBR, Sergey


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
