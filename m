Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05495CD4F3C
	for <linux-phy@archiver.kernel.org>; Sun, 17 May 2026 20:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2E3DoIlH9Fi5G6Q3b2nXHF/BZkBs6hctB0EYETMqe48=; b=L3D58l71ZNQMnX
	K/Ez1micvZ2IBiLq7k5tQWoKyBgTnkzAiYyeCIom8Q9Z7uw6+JdCo7Z9pLnGOxV9lJzw2oEA7c6Tb
	rCVrTpDevAaqyNfjqSfy0RAOoHE3TlOynIb8PMrPVUfmFTU9IKM0cgaSnAiTn2VHU2GrQzQdeB46Y
	cmN1vrqYtRL2O8W/KwPiK1SRiVeHk+0BHzWcQDhoIGaV4g34K1p/vNQX0z4UJr6MERxpSVCDt8cCf
	xN2JHNqlU7rYai6WCugZU9zDOx2DngFIML/MNVJwRWV/D0HlD34tJ9ca7IiIe/TIG6pA0vNwcjQRT
	qdupwUZ7zNA5Ow7ELdvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOhnb-0000000DO6a-1goT;
	Sun, 17 May 2026 20:09:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOhnY-0000000DO5h-2NGF
	for linux-phy@lists.infradead.org;
	Sun, 17 May 2026 20:09:18 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64H4dxcR3573277
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 20:09:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hu1EtnfuPuyZsalbXIEwU6Sg
	KVDqPybT0/jZrzd+yqo=; b=f6id0z7KZGH3WkQPvazB7wd+5zTpVArx8O1+9WXk
	sWySwj2F4MqGnH2ul3ouDVMqqh6gNoxCs/pwXNC5OOFvOTFyjWaLoMeGJPCQN9DD
	ceoQOX0tviM6RnhNZJdZO9ZsxI1DDTA6rsPcTuUN/8qVjJXbY63gDTsWjh+xqzQC
	4yEetI+yr026lerXb314VaMHpShyDmdzX1JltSedfjTnIXXkPb5+uEh3Jmjklrj3
	5s+cGQenGba+Zhrmse0IZ4vvL5ROvZyA12xQ0sOtnbJUNjzHvJhQLbfCitSSraqi
	1LOXm7S2RZB2gYQEToxa6VenKDlGM1tu3x2wCRkZt4C6bQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e6h01kh4y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 20:09:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50edf01172bso52535341cf.2
        for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 13:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779048555; x=1779653355; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hu1EtnfuPuyZsalbXIEwU6SgKVDqPybT0/jZrzd+yqo=;
        b=K/NKXV0vU6/6Nyq1c0cthm/09WX7CQL2TZVm+BqEpBMvhzQymxVBrfrdHf086pEUP2
         5kFva1Mf2ypQHCbo10nz3KHc/XSbXYDTTJAlF8ygjJaNRHQT5IBj4Bs9DqL/l5yq8jHd
         +EKuhL1rExazZec6edImyHzMMxXZzB8XbcqKtXDt/jkvEZPflPfYOiPIZRgZTWhIYg36
         k3LVhieOwhRGyUZohrpEHZ3RhfOi5GWx8dpDzzL2sMJKgSH4i7aRtZiPYybIWm90k6F0
         OyiqC2CgISVGyFAla0/dcUKgB24zLxodbyElmgzSk+AmNt3CcPD20J/8Bf1OZMINCF1g
         4C6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779048555; x=1779653355;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hu1EtnfuPuyZsalbXIEwU6SgKVDqPybT0/jZrzd+yqo=;
        b=I9XMafqZP5YOBNNkvesOGRJvu5QwzWuG1qnheTqg0/RzIM+CQXvjrfP/TrgjViQxeb
         uNZgFPbxoOxeYxVg/N9V9hWIJBDSAWhAOW+uVZJ/RvKOnLEb2dNCqaEI/WxkLbMIU2w0
         XHRc+jaIQV75A4sd+lXaGXbqb7LMfXOCQgboeu2XrJwnh3vxMK6McCOLJ+gGfj5+1TaQ
         ldyRspGCaO/tQ5Ibvja88mh4KA+rwrE5Kme8UMw4jiwoAatyMxrwQNyrnDQM7V+dJyAA
         XT9Q0zwKkdi811RMHD9GsCPorSlQxpH0d765a/XfTktGf9ckK0wka+xVuYYmiGuWwjzx
         if3A==
X-Forwarded-Encrypted: i=1; AFNElJ/KJuFTvzyIVbGMal1vYSCQft0LZ/Y+Y/k2wqBqwIrcou4AObzY/5D3MEpqf7+WVunzklAEATlCIC4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmeKiC3mRkujlzgaRZTh6AZaW/usZSxPwRtG3H7DskdwFDBUkC
	hma4eICToA5yS6IuFlPy18SJA94uJ76gd3LK5dtdeoZCJG9cGBMfObCgtCMRh1cJ3w00DUOEUrk
	P9+VYk6lWQHRu5tgyv9/j5jOJi0x8R7Uny9aie8bN1HaoBhs2wwJkNpkVLdn30ei5G4dw
X-Gm-Gg: Acq92OFkijXdbEqeRn4cL0mGCs1BObM9HeXCT75rPjeIOZ+9uvQGi3ENEs/Ek8YHMww
	gIK0fEVZAdtDE3gsOrSt3wwNOv1GT6C78kUKZD+gyN+hgwIt83uM2IBdOAQ30wUC5wDWhgKCqA7
	Eshy3xl5qqavA4XfZP9+1xMbtp8b2dGL6IPMJqme9RWxP93mwS+TGEUq7PVjOks72xfr/cuupeU
	pDCj23uD6S46SqUpQ/EkG8FNhJLOcliTUmGd+CM5WUKMpQUJMCjxqyyoCMxAy+v1UIpJHB2Im8O
	jHjI5B4k8T5EShVDhR61DKOy/cN2maw6NfttqwXzieDeOLKUSqxHXfoRENnlyQNYiSfyRPNflam
	Lmrvv+sUnXelnAVBs+7DxWgS73NkI75bHlnduvDVUuJ8b83ZxPfYMCQQU8AXdlW5MNqbgwPANU2
	3bRtRh+LL1FqkKmQOBRISwDLccsk9kvcADGlY=
X-Received: by 2002:a05:622a:4a:b0:510:12d0:3d80 with SMTP id d75a77b69052e-51659fd7d56mr193596761cf.12.1779048554755;
        Sun, 17 May 2026 13:09:14 -0700 (PDT)
X-Received: by 2002:a05:622a:4a:b0:510:12d0:3d80 with SMTP id d75a77b69052e-51659fd7d56mr193596391cf.12.1779048554324;
        Sun, 17 May 2026 13:09:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164ccd7dsm2895550e87.67.2026.05.17.13.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 May 2026 13:09:12 -0700 (PDT)
Date: Sun, 17 May 2026 23:09:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,qusb2: Document ipq5210
 compatible
Message-ID: <uoi2732geiiyocjkftdyf23hmbgsm4r5aroudoc24ja4xios5e@fwpmhz3p6rnu>
References: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
 <20260515-usb2phy-v1-1-5f8338d466bf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260515-usb2phy-v1-1-5f8338d466bf@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: ubh9bKjAjNHEnmpD7uucYsHM-GxWxCEY
X-Authority-Analysis: v=2.4 cv=XbG5Co55 c=1 sm=1 tr=0 ts=6a0a206b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=11pfgTztydWGfUAPEyoA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: ubh9bKjAjNHEnmpD7uucYsHM-GxWxCEY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE3MDIxNyBTYWx0ZWRfX55AvKN1QVmif
 Vusj2L4ABlCWWim5/BhldKBa34E+Xg0I6iaAoSFCMBbXdMTTn8Rynf5gPhpGpdDodQ2UK1vIcyJ
 /lhqNwWhq4t01i8J8PvSb1AHk40U5dAU53KJ/XN0yUhddwDxXhvps0PZlmFcaNVWRLHdcLXJGAH
 U4P0+zimHi9cGrWT3N1lxqKFxvysNgOb43kiXJFRe+quBNlsZw5dt+BQMXEYgifmGXkC9x7EFN5
 yDamMxw3+Yfje6C87UYdl3H+nyLC8OuueFqetdlMqsn79CoLprlMzsEp2c3kZWzVdHGzqaBIeBB
 yTFl/qsGm6gE+aAESGESXPv0dAx+rvj78R1Bip+3fzWjjQRVJ95Rs2oxy9dosjDyiPGDxJNoaHZ
 dIl1X90Is9bMqGXCw266TimYd9Y9sZOCkYMx4PWtVTngYBgMGcfoZBHGXjxe/+Ss+hSYjPCtdPl
 is1nYsyYVLwxsWZUqvw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-17_05,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 phishscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605170217
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_130916_729522_85CE3687 
X-CRM114-Status: GOOD (  17.30  )
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

On Fri, May 15, 2026 at 04:17:42PM +0530, Varadarajan Narayanan wrote:
> Document the compatible string used for the qusb2 phy in ipq5210.

Tell us something that isn't a part of the patch. Why do we need a
separate compatible for IPQ5210? Is it compatible with any other
platform?

> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> index 39851ba9de43..509cadd31adf 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> @@ -18,6 +18,7 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - qcom,ipq5210-qusb2-phy
>                - qcom,ipq5424-qusb2-phy
>                - qcom,ipq6018-qusb2-phy
>                - qcom,ipq8074-qusb2-phy
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
