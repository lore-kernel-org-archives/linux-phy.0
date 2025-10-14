Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7F04CCD184
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 10:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iu6zIRqetSRlyrtMzLEFbOlCG4FPEXUE0+oS039XYcg=; b=j6DuNfRikvwBX6
	Jm1XozJW43SA7+O+qDdJtDziffHZIyQNhv4MYQta4WOpRomt4DRgB7c7p3XkS04ISkWGXBmUI4LNj
	TBu3gInxPcppEQ4Oj1sYZta+jaKENlSNsAbKLcDTpO/r2qqBweOS6oZ7zwUDrK7A2yl9O5pn2+1M/
	LinKQoPE+goEedTCwbb+e6Br+f9EV41sNroaVISTDbS6aKpfXftl4+k+IZqdN1/CxiDFNa96alPhW
	6icxwmTCZumMkIVrr01UW8J3CZ60ojKcGGN/BcF7Fjb1jBpSw5sIbVOhbUQl1qQh1e0cZwqkl9dWg
	IFdxJpAjOFxXXNSv5Vrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8c32-0000000FtYO-1ogR;
	Tue, 14 Oct 2025 10:14:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8c2z-0000000FtWt-1h7T
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 10:14:26 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87NP4001552
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 10:14:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vMqv4XU7nIEZtG/sYMmrZR0+
	HUe1TmboOJN+Lx0BU9A=; b=lpQiSkmdqbENU6E09+OLL0c0rGlbdmFCqjO5KuE9
	x5ddN2YLeiOmpsl6+RX6fTMK95i7qVPY71hB6MfodrIqY8plcZ75YQObzBHwzk2p
	z6ZeA1jdoz69eZtg5ZCBfuAYajXoBamGM4QTgLETBHKrqgYL0EIG6SshP+rdLbsj
	iMwvQS/Y4BJSbkhCvp/5a0WooKlgUEgHsTDHSHJeOZWc9eBzMv+r0WypMHTI8s0m
	XRYKD+Z+tg0yuPb+P9hWVsREAPI02HN5Si2Ksn3uRQgdGAefzzcKLF+GT0PC3p6X
	XkecNJfOnfIdr3D4FgA19+JasxOlKJW4YI9VwQW19oReyg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdk8158-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 10:14:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-88375756116so823016685a.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 03:14:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436862; x=1761041662;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vMqv4XU7nIEZtG/sYMmrZR0+HUe1TmboOJN+Lx0BU9A=;
        b=YYymq0BSKvOcJG4Flrh7AL05NLFOpAqwfeSguFIIkbHskMqA70LEAmO6x8UFpWJUMk
         xBnplG9WmSehpC5Jw7WKqpd/EJeLVSByHvsL/akuEQyZFAbrHLlaGF25TelL6zo7HV3j
         XWn4quBLoBmy/gqbjG8j5dJ3RNKXePv+isomRJT0+qhdqJ3wsNzk3joGYzS1CySfmzAY
         nNSkrWj3Fu7ZREEBPna5JAUPfaGxtBfRTuouElaM/YV5zTFYaFaLtkw8gQsKYbUrTDaU
         x/e6G8FFad+Q07GseDNwcD+8lTuVLQfp27eHN7YWzxmhla9aqI3MbWHAYx8uZxfLc7Hi
         5/Xw==
X-Forwarded-Encrypted: i=1; AJvYcCV4aEGJ5IWS17CZYYWq/8pVP5yZhUoWgae6VPf6UZCDrhwLKKGkWStuMRTHo5+KX5zI9ykGysjsk0c=@lists.infradead.org
X-Gm-Message-State: AOJu0YwD9gMiM9nlW5NhsiuP7dXInqdQ7HmwAzHfxofCypxBWlAhdiPB
	Kvq00OIM1WTwcd2Si3657I6ZOq9YIfaNZIH4PO1sLct0oxTkKQ8wgq1HGsQEX1NtIy6YkAQ2Pg0
	3TRDYWAjNRWo25DSZVrFvQoaFH6eHeuZe1fwtuxZeuafhe/FgXOfK7ZA9CsRgTTxP0IRd
X-Gm-Gg: ASbGncuSHVTJwueMWO2hRCscHhK6OR3QwbdUol03rdyRXhCoVZX58TJHGM7GgWx1vRl
	qwI+P93phgGClrKh2Lz5q8+IlvE6O0SAc4lK/gk/sF7SwXlBWiXPVNqAKnUklFKxFUkMvO4B0e6
	y8wJKTBsmMVqmnTRQqVYggKosZEJ36aWAxC2eAGGiYmKU6nEbSaF55IfOA0Y06KAU0SB8z9K/Hc
	QUKjs26ncGRSxMR8YnnsSEtnud4WHInWoP3HX72XT29u3K3zqzfiO1kiGkOPwL5zdwgmZSvgvq3
	+ToAo5/TpomGZ4BDnHV51M9kPX5t4Ph194+pJsupU0qE0n1KZ5m+mSvFCSJpOzcQv1Ac/vUJVlF
	G2afNdGufOgW0x3HKtP4jmkm4aja8O/z+QQ7qXv/a4WqSn9iKTo2U
X-Received: by 2002:a05:620a:701c:b0:852:d8db:f4e7 with SMTP id af79cd13be357-88353b34013mr3649400785a.43.1760436862440;
        Tue, 14 Oct 2025 03:14:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE26zUzxtiqBGz0fWHzoxuwaD0agTvo+ttD3Wx8z2D8qcgGeylJwiFMQLgCJJlf67ZKAB+sWw==
X-Received: by 2002:a05:620a:701c:b0:852:d8db:f4e7 with SMTP id af79cd13be357-88353b34013mr3649397085a.43.1760436861964;
        Tue, 14 Oct 2025 03:14:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3ee2asm38789591fa.50.2025.10.14.03.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:14:21 -0700 (PDT)
Date: Tue, 14 Oct 2025 13:14:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/4] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
Message-ID: <5t3uowqhhmnbqhrvmkr7pfls7753banu6aizlszczrem27uesu@po47ah6eic7p>
References: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
 <20251014-phy-qcom-edp-add-glymur-support-v3-3-2772837032ef@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014-phy-qcom-edp-add-glymur-support-v3-3-2772837032ef@linaro.org>
X-Proofpoint-ORIG-GUID: QUROkdflKHT2hKrEq5q5PFx_di73veeS
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68ee227f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=UOUSw7ZRRveOu6dMj8oA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: QUROkdflKHT2hKrEq5q5PFx_di73veeS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX2s2P31fumuv3
 woG7lAy4SivMWYO3InZzZt0urxe9EkdYHVUsx1J697RPneLlS0IIjB/oKNvwJb0vzlBHSpnIg80
 7bBQmNsPya1OCVf4222BQ2Dq9LN5h4XKeRizxwTkuuFeEHqvrc+qaN5ogZuzq8JlXr2cvntycSA
 K3wxxP2b1nPz7vds6sGA3kNASSkGAwQSJnOG8duwKyNICxbspVHKGGtitxmH4sUVOFb2fsDAQWP
 JVhk5xJ3xSCRqt8WAwCrTgBXONYhwhCfcq3tTzxvL+nF1Kq7XE6KW9gr2VCShxZkXQABBEEWGI9
 pl56pn5mmTTi9Vq3hxjENHEiy0SrtnvTngFzOcTa8h36ZXc2Li3lkQ5w/+w2HhCVXg9AcMV+qba
 nuQoNaKkjjT1UVD2fbP/yJ52XZwoKA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_031425_556956_A79657E2 
X-CRM114-Status: GOOD (  17.37  )
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

On Tue, Oct 14, 2025 at 01:02:29PM +0300, Abel Vesa wrote:
> Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
> for the same version number. So in order to be able to differentiate
> between them, add these ones with DP prefix.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  | 52 ++++++++++++++++++++++

I think other patches have adopted
phy-qcom-qmp-qserdes-type-subtype-v8.h name.

Would it be possible to follow the pattern?


>  1 file changed, 52 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..2bef1eecdc56a75e954ebdbcd168ab7306be1302
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
