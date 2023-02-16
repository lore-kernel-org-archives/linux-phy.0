Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC61C61DA4
	for <linux-phy@archiver.kernel.org>; Thu, 16 Feb 2023 10:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NzpfZ+VZ/PvyXsX8wYWXVvTBvzrKyzI6PjHdODHNKBM=; b=p7VFTrlCRZOExz
	X0HoTTQ/nuSXFE0OpZzwH8m339SVt0xJKt6JXgjJiY1j3PhPB2CQNnZuEZ7sNXcWlRUHfx8L+9TrL
	t0vIhv/Jvrm0SV4NmifCidOB+vDW2ffHqzzHvUEFM1WUlzPgN3tb9sylJMMSU7VGR2MkBwgRFsnFZ
	4ApH6jn2GgQO5EaAbHftYfRcRgwWYYKH+57Rv76z+/5Tbt6t90Pj6lYu48tq4Pni2DbxMn62cAaW1
	hNyWcNRAWBqFrfJc8ltIyAReBiCjyd/AzWxwvrt5PkSq+3QdpJGUt2+w1osloumpLox5iz3NhLJM0
	ORVOh/20Lhh2UUOdvOYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbWn-009ZYY-JG; Thu, 16 Feb 2023 10:30:13 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbWk-009ZX9-UL
	for linux-phy@lists.infradead.org; Thu, 16 Feb 2023 10:30:12 +0000
Received: by mail-ed1-x52e.google.com with SMTP id u21so2136799edv.3
        for <linux-phy@lists.infradead.org>; Thu, 16 Feb 2023 02:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=trMy19lCfoNQKMYhTv+urc84CG0y8L9modeItMkODVw=;
        b=Mv8q6XBJEV3iD/szEGMfFVC45l6lbFtsFxQmNKoFSQsOLucCqN9WzaOlpGx5dyuTRh
         Rx7N0AfF1nCubrdjTYIKfn8ygSA63Bie+E49HgVYrMVAcfd9Xl94ltPW/+p1RF33MVKK
         YnTLvV+y6ogWtctt4qk4tQRscpRXtgMyp2FwhlWqtBRC0w2wEkFYBEdd0ZtiHHrf5Nc1
         3NCJQNb2SXbeqMisY+SbUN8yWn+whlhJIysz8rb7MnkdtXKzf36ry5ndLhZBNSZKVnq7
         xepfCLyzHpxvmBk6PITESzTxtOz1ITo34HUUlgpuefwN37dVY1JzXrOJi1bc0d5NEhbh
         NCpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=trMy19lCfoNQKMYhTv+urc84CG0y8L9modeItMkODVw=;
        b=Md/rQG3sidIYR2W+GD+JJ6lhkLhzl8Rs0oDVdoUZzMGs+PknHPbZbSzDgSaQlg8d3I
         Sx8YyfZ1CXzxWymyW/j3Bc35Apt0ObTmL+lMMMGpQcPKhc/oW2ksT0l+zOA89MoZaOt+
         gOdF+7TFZl5B600PjQJFs2X3v6iT+/F/KJZKc1Cj8OaM51SO1+Tm33iuw8CRFZX4VYql
         M2sAfwUnQ9D78UAQiwUrlXBuAVde/XxHZ3cHTFYscuytKP+e2llP0mgWzrhu8pPZ2V+e
         kdKcwe71WFnk8HOGxhsiFda/WPl2TzUMCWBKw4FbzWd/8XvBobG11aQEfOrX9Q2G6e0d
         qIDw==
X-Gm-Message-State: AO0yUKUOQlDWUhSF2rsySxlssHzqMBxDhq1cylsk/uErUfmFMcaRacEn
	V5WibZjSbfjxZiO7BQnUSFR41w==
X-Google-Smtp-Source: AK7set+e6/QJL3lGLViNLI1RrrQJkAnhpGCZU/48DSywTKjOFl3uP6B32GFpz+Yqmal9PtkGNSwEkw==
X-Received: by 2002:aa7:da88:0:b0:4aa:f910:c21c with SMTP id q8-20020aa7da88000000b004aaf910c21cmr4671262eds.3.1676543404709;
        Thu, 16 Feb 2023 02:30:04 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v9-20020a509549000000b004acc6cbc451sm643303eda.36.2023.02.16.02.30.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:30:04 -0800 (PST)
Message-ID: <a1d93b17-ccd5-fc90-1450-b0b900e00916@linaro.org>
Date: Thu, 16 Feb 2023 11:30:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 3/7] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574
 compatible
Content-Language: en-US
To: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, lpieralisi@kernel.org,
 kw@linux.com, robh@kernel.org, bhelgaas@google.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, mani@kernel.org,
 p.zabel@pengutronix.de, svarbanov@mm-sol.com, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
 quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
 quic_arajkuma@quicinc.com, quic_anusha@quicinc.com
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-4-quic_devipriy@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230214164135.17039-4-quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_023011_012346_90D6A60F 
X-CRM114-Status: UNSURE (   6.24  )
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

On 14/02/2023 17:41, Devi Priya wrote:
> Add the compatible for the PCIe QMP PHYs found on IPQ9574
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
