Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07382C9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 13:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KzOK75qngUttfTXsjj2JCyNmcm3SExS4cEDLaoyaiGE=; b=KFJ4d3YOZPwkS3gYMm2Zs9XIp1
	0Hdyynhc0iNJd2Z4xC7O42qGMOo9jkJ5EWfeQWldjr2eiC7w8TJ5pCnVbi9XV9ZDGPSLjLVEFrTZB
	CncGoekgui4BS0pLwVuDz5JUeiP3vy1OnZp3ndWTy7A8aWqxSiveQ+1tc7Wvf+zN5NEhBuCELuG7U
	6OkFvRSX+5qCzu5zAJyq7zMKbn0LxqX8TF1hGLHUROls5jRFWHnnZSPIG8G6+RD1MRReXQQh2Ayyc
	jw5rB8+3t8mSjYKcMjkJOTtm7wSD+xeYcijvmQEtI94/Nb8PPx9sumF4i8SplxQV6CPAFF1iUH9wP
	uBoNr1YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA652-0000000DS6p-2N85;
	Fri, 25 Sep 2026 13:35:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA650-0000000DS6G-1Nr2
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 13:35:11 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68PA4DdT609132
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 13:35:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0+9Tf85hFayM5DW0EiV7Zj89
	MPJK1Rp1eAzmngjUXtQ=; b=cjsDA7bFqK3OHd+oGx6GAVOUEGYvD45zm2KvFsgG
	0YJgRhVUrvSXbjwEwPpPXtpuzwLniqci+ZmetujF4r4xs7MiwmYeLf1NUel4IesJ
	+FL7k+IUFqrO3t5IiHjVJPcD5pDGMWrEY1b9sY9q0GFbHTZh86GLxRc4KPZeAAxw
	AAgIc1K4kxHxmRHRJBuOjNSf4+knAVZ41g+5deen6K/0nGWo6IAfIpkBQsQyLRxo
	fUusKd20SxVunv1Yc772EBMAzBI9yYe7eybcvh3Tos4mm+f6cYYKrz3IEQUAdzRK
	32UpZdvvKCIpprt7MvF44BXuj4JqrZYzLXjHEVy214Zxug==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gwpvnrmbv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 13:35:09 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-939c30aa9a0so95029885a.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 06:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790343308; x=1790948108; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=0+9Tf85hFayM5DW0EiV7Zj89MPJK1Rp1eAzmngjUXtQ=;
        b=CqOf0o5Bpl9wfxr5LPlYzfo1rcBSKC5BzGFSnUZnYDRI+Wx2kSN36n3L00YhIj+Ohm
         EYWAJ4pnSPvKOMln+TPuVYBnAOkNMcWlVBJ4lcMZ69e5t6gq101+CmoRtnjiS+E4OLl8
         yypOlVdn4+5JejfVoXp3juYpYdnINX6I8x1VvoHynobA2MMAz62+3aQZn/fHtoiKcxYa
         X9SzpjfJnT9r5vGu3MRKb3buQwaFhMUOGZwT01U0fgJr+Aidw+GFcAoC8YlNKZASXaIU
         NKzMaUXiEV41OQ+EX0/3ZT/0WOodaTeu/6Vqtyr9Q6cJI5g+6/OQiEtyLjD+cgZYCe7f
         GxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790343308; x=1790948108;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0+9Tf85hFayM5DW0EiV7Zj89MPJK1Rp1eAzmngjUXtQ=;
        b=bM+Cm6bK9gziGkouBndnc4wtYPD/0GZf70Uy+nkhSlqgq8K2ifDuFK3TigUsT15l4o
         aYyvkIbWv4I04ZTFz9ki52Kc2zNjQsBExGKD8Tq2/VJ5VqRmHS8L/lfLiLSnedbO+ojI
         DC52faw8X4PxMCms9v9qq1CxMNqTL4h94H4B2kKJToorW57ZRT25QRIqN0nVVuTKwO79
         Cop5lcbrTDNEs72zh7gmeE3WOnprEfOBY7kl882LzM5XNNMOc2X/ngrpqChPNSEREGXw
         Z70RH6FbDCPhm2Kp1ePu1EJnJEPNIlwc5TDzM3kwIoTwLfUiP8JusRpVlKDCwyG4wC/D
         xxBg==
X-Forwarded-Encrypted: i=1; AKwUvBxQYgXamh51yYRyqSRMt8ggk0VGPXwa92RfiV5Z2AwwIh4bqrazN8ec1+USJir/xPFuhH/tEcCL9kk=@lists.infradead.org
X-Gm-Message-State: AFuF++l1F9U2o8aSyPLY3zcJo9vRpFo0QfKNBaRixz9WTgFApa4UP4HH
	m9jInLnDzPihr1BOPQQ+XVNetRBsXkAH1fiFcx7vYIrO8eALktxFYa/u3oiX+ENAZCuh1Wxf7kE
	5FPn5IriWesJG0dI0ol+KkIztWKi4wuf4De5VU6gf+44Lzz9wtyXkpAYEbYDEVkzJ58uC
X-Gm-Gg: AYBFou1xymGCFGdQwk4qiiwWzLV4Sr8b3P7wW4yx6JRR9gPSBAueGy8M+xtkyOP6dCJ
	THDQ2Rcn1Izfk3ibZFEoyTc5mSD01LGTHQsLlSeFgjS6O3xMYJeP9s2lPIt0ydZbqUzD9PuEiyX
	zaIpkdLO65PSn0+6yQoLZp/vjjXNa/tcSjRLzd5AuHZhKprpBFTXs3tPAWdaxYsVutv4DIVWPFM
	qqSOECd2s/3ZgBiVnbh68B5YzykFQtirrCSDjtfocjVqGr1Y5lFDCyJ9GAHENzK+JCKwdcR18RW
	1VCDA2SBrjnmhctJgLy+ayXPWndiGKSfdA/XyYm2u+xTAvAiI2k9ucJ1hE/DfS6RlFhlV5X7xew
	B1qzjEai+Bt2wNw==
X-Received: by 2002:a05:620a:371b:b0:937:7e90:ecc with SMTP id af79cd13be357-93c43bf241cmr483149185a.25.1790343308392;
        Fri, 25 Sep 2026 06:35:08 -0700 (PDT)
X-Received: by 2002:a05:620a:371b:b0:937:7e90:ecc with SMTP id af79cd13be357-93c43bf241cmr483141485a.25.1790343307700;
        Fri, 25 Sep 2026 06:35:07 -0700 (PDT)
Received: from localhost ([188.216.77.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a6450a3sm6569501f8f.25.2026.09.25.06.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 06:35:06 -0700 (PDT)
Date: Fri, 25 Sep 2026 15:35:06 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy: add
 Nord compatible
Message-ID: <arZ4ikxuE3p9CfRz@lore-desk>
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
 <20260923-nord_ethernet_serdes-v1-1-f8ac1c487882@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <20260923-nord_ethernet_serdes-v1-1-f8ac1c487882@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: vijZ-TVEYjJAbKh1quZJFdMBQeEguvE2
X-Proofpoint-GUID: vijZ-TVEYjJAbKh1quZJFdMBQeEguvE2
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI1MDA1NCBTYWx0ZWRfX7gz7s9K+LeCw
 Pd3E1WQ3FfI/HMIbIsD3SslQl6hl1ihheqWDd7wyGK68ma68jLIyJT7eBnk6J7XHMN8NZAlQoY5
 +VLCcM9yYq53lVpJCqSd7BuzEVhKm10=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI1MDA1NCBTYWx0ZWRfX9fFyEGScvoNT
 yurIHMamT8zRMeJvjY58FDUeAIoIcLw5s6ygZVsOt5OSmdfTWAvsWgJppVkoteCEBTFn45wzd0y
 ntk9zpOwdJwo7QywKwkLKMH/64MyaDxajVTBBSaaz9vyTgFDUwwtVhln0lmT9cl+No7LBzmBokG
 rYbVaWHPSxBsCSSjzdWj6qeYdFTndob7MIrZ4UL1o0wURI4QSrN2YVpbCQCQY+v4MktuAC3Mwd9
 5ng8p8TVOPAgdOmS/SZVX+4OK1CMUhyTCckr6ew8AycJH3WL0fFuDRAp4qgzDCJj+3y+pat6c2q
 UhBdAG2NLGe7xYL17bOv2jpe2xFczYBSqeSiGdcc3zFXBWzMdP5v4wjkuGGktz+SowlnPGdU7Tm
 J8gRIwH4RsaauC/h10yf/FB0yL8M7vsP8TR7KUwbicAzXIpu9LjlgqjYt6qBAukIBhQGADSP5IE
 MPSKOtatq6eujbKruOQ==
X-Authority-Analysis: v=2.4 cv=eNmGH3p1 c=1 sm=1 tr=0 ts=6ab6788d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=WpTaRW6qxYHRGzLzQsVYzg==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=XuoYqDaM_I_laROpC8QA:9 a=CjuIK1q_8ugA:10 a=BlIz-W2qHe9yj-0B_l8A:9
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-25_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 lowpriorityscore=0
 phishscore=0 clxscore=1011 spamscore=0 bulkscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609250054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_063510_499653_841B6990 
X-CRM114-Status: GOOD (  14.71  )
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
Content-Type: multipart/mixed; boundary="===============7962277757979122008=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============7962277757979122008==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Wbcqu4ESfEJos+9j"
Content-Disposition: inline

--Wbcqu4ESfEJos+9j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Add the qcom,nord-dwmac-sgmii-phy compatible to the Qualcomm DWMAC
> SGMII PHY binding.
>=20
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

Acked-by: Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>

> ---
>  Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml =
| 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgm=
ii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmi=
i-phy.yaml
> index e573abcb937df914ced25ec87add7955bbba7b87..f2df9983d9536654e838bae4e=
1e23b832cdaea3c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.=
yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.=
yaml
> @@ -21,6 +21,7 @@ properties:
>                - qcom,qcs8300-dwmac-sgmii-phy
>            - const: qcom,sa8775p-dwmac-sgmii-phy
>        - const: qcom,sa8775p-dwmac-sgmii-phy
> +      - const: qcom,nord-dwmac-sgmii-phy
> =20
>    reg:
>      items:
>=20
> --=20
> 2.34.1
>=20

--Wbcqu4ESfEJos+9j
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCarZ4igAKCRA6cBh0uS2t
rEj8AQCvog+D/EGZ1bBhQzHnuSy106/aNlu3Mkje9Z9B6bRv4gD8CYovhF1C/+kv
cQcO0DZ9od/rY0vDBhjipvCfqcC+TAs=
=pLpz
-----END PGP SIGNATURE-----

--Wbcqu4ESfEJos+9j--


--===============7962277757979122008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7962277757979122008==--

