Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE9CDCD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 10:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WxVXv6cLrzLY39u0YaWRkxIJnvUab0pgLHbhqXn2e8=; b=HvdnRKROrxheV4
	F23BScyW7kUjfl9TJ8v7BF20aePvkVLTMh8rmxtsVupjcHy2rJd77UnKgmeO+nSGOy7Tjohw4vGe9
	EW4bAyZ1MsYtYmhiDvwlGudl5zvfhRxI6DCHfVpK17Ru88XJrxvjEShN+AAJMo1TMkCLcllVGOqQg
	XUVnZHV/zb/ulhhT6lL+onepKX3/MEEy9oonII8STrd2C68dRbxNnq5iUIB1SrDiLqS+Auv1nigqj
	Hl6ybdw7NUxRNmQOx7FxRe4eiwhYh0R6MiYumEkRBIRllFAYZSBlOa2iVUdUw4Adkz+DbgF56hTwP
	FYjkdQed/zxGYBEK88kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5L-000000085Xr-1pxc;
	Fri, 15 May 2026 10:48:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5I-000000085Wk-0hNO
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 10:48:01 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64F9KvDN1714981
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:47:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sn8q1HdVYoRm1djZaFGYIIMjhSJus/GnfDru0Q1XOxE=; b=WbAC2wjMPFRP8mMa
	YEqF6A6q8KiAiX9qu9+x7bPT42+TdbHQGlh/ZIboZ/wyQ8eUqO6Jd8PI33NON3Bc
	Yd3n6hDEdQwsh34D+XRUTH9yJrNCqxRYG1rGsWkCDRdigjWw/oq+lblEbwe+nSDJ
	OT4UNNf9UsqJ6rQ9DfBs9kCiPJ7WSswgEoFZKZ6osV74OJQMVSoF7BMQ489CzgvQ
	dj0Wgpx/24X/dWDKDPa529/Vg8Ib8Swv0mwck3LJLjFN13HHhKGL9N11iAkWCzNg
	HowLgCC1LnbWztEMRQpTxLf3PRtoIAfvOpBGlJM8MQ6kYUCiPEpeCiTRFnpJXCZD
	51G0Ag==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5tyxspf6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:47:59 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c82c84be9c3so708422a12.0
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 03:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778842079; x=1779446879; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sn8q1HdVYoRm1djZaFGYIIMjhSJus/GnfDru0Q1XOxE=;
        b=X2Dt15U56uRVwoZ3mvVQYiGt23rf+w+DqV6UFGiHh8fmCK9itaz5PaLiAkghZUYGLu
         jIQxTz0/VI+iR2SjD3cR6gwUBq44h1zNkwHDIRSfaarcWJECxvNuYriRTK/PRMKWN2VV
         dkUUJvejc/S9YJopiNtSXJefkQN6RJZnOEv3lUgC/ZVLIi+DXusKx2rflT2R10q2dxuP
         c6peziG93/FjBI8LaIBPlXtyDaEHWTvP7rFHdLfsDlaoECkEI9sprZivKl31fvxqJ/iE
         Iezy6hxd7DZ+9nk6eolhqFG54WsnZ38VKeojVK7lvNoDmuaf51lPEqvc9QQq+0xYygzO
         NOgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778842079; x=1779446879;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sn8q1HdVYoRm1djZaFGYIIMjhSJus/GnfDru0Q1XOxE=;
        b=JRt0yTEV08NMDQYltrxL/+7xjdqeN7nlf1/MjSUDUtRE3ITWMq2yKlrMwn1GmORkYi
         tPdpcghDvfA3/ORjVLZikVmYUwlKurPxBFM4x1ZTZAXMyOSAEl2PS6B3mLLFOLs0fEob
         YtOiHQwWgk3LpmXpNSqyO8330GiWTYFd3rTwr+lHzE3xiGtcKGEpwqneeCMvCoc7DnYU
         rwdpuds+xM1MGi+5/5QOaz3QF3mHUP1/E1bWIRz0XRR6GHGdNjPCYYFNIX7YkwNWDsOW
         YBcmbSnosqFMj5OQGHTmJOnRyXNhNCcgyce6DyQqXgZymZeMuegLUsr0zAmL+ozxJti9
         UH8Q==
X-Forwarded-Encrypted: i=1; AFNElJ/PTIcucpJhtbUsFSHnXwV3CG4Iz2huKRgnSuzqbRg8eEZ+9EO/kB+EL69inY2vcV2KNx3NUYMEy0c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2/wpb1xGKRYz75nd8PjEI00E4QMDP0aoEMFUOXfduKWXAMwaw
	gCCZ7mHZ+NxDaG6f43yBQ0i1xD78i+WDYLxz/eomZhUD6dA6uq5BF9q/kTkYyfycpdVwTGi8v32
	HSvrx7EnHgIbojUKnawxDamp4V6qvqWMVvbyegBgBVtP8/DHZbP9R7EM7OupNBOiWXlhJ
X-Gm-Gg: Acq92OGjFLXKHW0auB+qLUTwpJFZyXfY6AjecPxtWuK8RuYmVrqDIqfQf3FksQhOWlm
	aD8+bbxDVGy+BxNiVIZfU95aJsUZ0fjk8J89RXadLNqlvoXsaLZuKKVovWECMqVgVaj40NFLCtO
	c42FfEzQdJq4dHxClN8c5EaXQ/ikQ6wFNa4jx/eLWYtmwNe7WrpOGqpYfsXN8j694r0xn3ZNCcq
	C3aqQinNhLBXI2jIJcKfUyMDTcfHFw+n+360f24VG8zoNmXgAgbp2ITv6eD9bVykBXoxBXWz8mx
	71P2VYa2Q5QkQ9+6RNjpGlcVaIJzDNkwzaCDInwYWLfUj2PMDSruOrAgmHovtNeq3QKO3TJuJhp
	weWFGNjxDLT/AfeNFLUKZ7sWhvno5+qQjaFEu7N7EkeyvdOLuEdv9CnvS+nyKBUk/D1jf2GQsGQ
	4apfL21q2bqMXNz8aAK5I6O+ftx5d6zzExjyrRhg/xxnZ/FlvDE7CkfpmEE5fjEw==
X-Received: by 2002:a05:6a20:e293:b0:39f:441:493c with SMTP id adf61e73a8af0-3b22ebed7f6mr3895199637.30.1778842079022;
        Fri, 15 May 2026 03:47:59 -0700 (PDT)
X-Received: by 2002:a05:6a20:e293:b0:39f:441:493c with SMTP id adf61e73a8af0-3b22ebed7f6mr3895170637.30.1778842078544;
        Fri, 15 May 2026 03:47:58 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c82bb1006fbsm4955221a12.21.2026.05.15.03.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 03:47:58 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Fri, 15 May 2026 16:17:43 +0530
Subject: [PATCH 2/5] dt-bindings: phy: qcom,qmp-usb: Add ipq5210 USB3 PHY
MIME-Version: 1.0
Message-Id: <20260515-usb2phy-v1-2-5f8338d466bf@oss.qualcomm.com>
References: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
In-Reply-To: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=dMWWXuZb c=1 sm=1 tr=0 ts=6a06f9df cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=0GDvqmC56tkqaa0O6TQA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: Ablv3XzOVVlhhmyXRZlcNrfmGDB8kHFA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDEwOSBTYWx0ZWRfXxrs0XNJM0ZIB
 iPjrge9yzsjM9xfSGdvEYkj28UNorvg8BwQY5uMhqflKecLFlZBIO35PlLJlJ9SJ4R800EFouaL
 n71qI9MHYBCY+ldzqwuc6eUH8HiJ3EZ3cpug+pApEK4psqaQQ7MhaWuRATWJaeRtsT3ZYhfWmDE
 OTWaWrbsvLaPX7yedvySYDvphXPkZ8dUMILijqB4zXP6qbRNBsAtjSc+jl7hu6oVbji7jXbd0yl
 climgKbPErc1TeUeev+5uxJgcCu/eiTFUX/3RjEkz7gKyxADNW10zEuUjRd4uV20FJnmJ+95WsC
 xAMkOsjVUwTN/6rAHNpLAdEIchOnGlF7TrfHA5ACxX02iAFsVTmsexg0eyC2AQe9mitvhMGFG+f
 m9NIhe+a/XuLFppIQncBWREUceRPVe77Y4iOzN+dIL93cC+kMo/ZXW7CfJdaCMyeBbfEnsgE4oV
 /RjEv2SjsBklXJFcCJw==
X-Proofpoint-GUID: Ablv3XzOVVlhhmyXRZlcNrfmGDB8kHFA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 phishscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605150109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_034800_472083_C07D9E98 
X-CRM114-Status: UNSURE (   9.16  )
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

Add dt-bindings for USB3 PHY found on Qualcomm ipq5210

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 623c2f8c7d22..bdb80371ea68 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,glymur-qmp-usb3-uni-phy
+      - qcom,ipq5210-qmp-usb3-phy
       - qcom,ipq5424-qmp-usb3-phy
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-usb3-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
