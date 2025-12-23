Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D9C6E6FE24
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 19:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSvISbWo+1lda7NMIIBW8B5ncnlJGTWAZ2+wSKoOL9E=; b=drqB1RPEg3G0Fn
	12WOMwwuRdAulN6aJzikG96KGvIoOKUogSz2FIaW1d7TIAt1Hq1qb22u6WseVM9wKoJbKO961lFdi
	6fFGKAA68Ne5+SztEiapiCSz+9829Vl8jvJE8Cke320B0eGy0ebZKHI8iwURGF/6l63RL38B/gkJ2
	4hFu9l3dMv834rx5OqltwqV/g6Wvx9nrQQhkzGJTTCJQ2E8rrjX0Evnq8ZyTLuD/aTWoMbod7YLQI
	262MTEgcsAZ7/6zyi4YYtNH4CAhj2pq2Ii+5M1lY4u2Z9TrMSKZk6wb4QcPMFiTviaI79gckCqFqq
	qoHSVUoXENjcvfU45m8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY7sV-0000000FydE-46oI;
	Tue, 23 Dec 2025 19:17:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY7sT-0000000Fycr-1v95
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 19:17:02 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNJCrBl1056217
	for <linux-phy@lists.infradead.org>; Tue, 23 Dec 2025 19:16:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xTixOBb4voaBZsTeY+qluGug
	zBnI3Ov8LTQ+nfSvVp0=; b=btUdi/Sg77AlM0Z/cCXN8LqTLkZ0voMuftQIV5nY
	TrHxc0+/zHlFDuLN84XxmXTOySY5q0PdcUotO2yb7SZbQXin5kXZwts3Mefirmgb
	Xz/DFVw8SUQhyIiunSCeqw5YzLGOGuV0IZgp/tEyL+BTZpjFLLsj+B//c47/EC4v
	90CTKskEpYU2uw95Z2Zc2vJfkFdNgjmV499LcvB/InplxKBspxhOFdGiSDOHR430
	JjvRSGMO1dfOLL4V33nBYkAiuHyNCTeifXlKwdknSk26h9J/3oJuFgmNaRqBKpQf
	n7KdFqUkLJzrCnR/Dl7HcJ8X6T/ECC4pi2fRKtRxT8661Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v00tg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Dec 2025 19:16:59 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a316ede50so103328176d6.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Dec 2025 11:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766517418; x=1767122218; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xTixOBb4voaBZsTeY+qluGugzBnI3Ov8LTQ+nfSvVp0=;
        b=bzHfIZctHAZOWW6cjmSj4MI9phfUIWvThpY9himVp/oWMXkS1/5t00p+ko8wc7Js7E
         hFPsfZiFMumX0G+vOVj9bvPgVAiH6HoTv/2AXk8xamFT3gEOcJWUnsue0yVswS1WZnh6
         QD0WNO8d3C2b63B/a2ksGQSBohMhnC6DFFBkrMKqYaGfc/+3+vdDY2ioi6arhmFzQqT+
         HN3ZNr/4e1xJN3qLxWXRgQ0L5V3TdSFNOlxO9BgnxwUYN1zNWH4tAQuNN9/EixFdGTWZ
         Zv2gXsJC1xnXgItI7du52nadrJXm+0uVSe8H/KiBnpcZyQStV5iY2YrwvG2T9D17WLvk
         FEsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766517418; x=1767122218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xTixOBb4voaBZsTeY+qluGugzBnI3Ov8LTQ+nfSvVp0=;
        b=Q+dYlus/zsnijgQmmuPAjdB3YbPLXzliSvPdkSLvXWExXm6tuptOOJTvGSDefLGDba
         dj8q0vO88TJ18rYVLjR15ejxD/xIS6LzwB7LjbTqawEHmYdnHZQfVxwrijAs/jJxxI07
         a13mH0RaYe1MiZK5+vur677UUmUs7v14D4K/AmsqB2MGOYvmhGE8okDJyyiRd0ulGkaT
         qkSByMcQ2SWNskSuZao8J/dQ7bDNKL2M8r4NGicGJ7WpTIEluZVnvuO9pjY38GRoDi2W
         qx3R4uZPudpWwisF5iHvTbWEUpCoFasisUkFTwIehbUOrpLJy+Pi7zj8ioFn4oxvOndt
         qOMA==
X-Forwarded-Encrypted: i=1; AJvYcCU1llKFPCc3pyH7pPyZ5MfzM/YHdNPLrxBmFdkttgpVXBiQjqh+o2PMUG1niy0hPfKev8kuppC+0oU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+xxmivD78jXbRZIvIvcWatYSG8rX1Ypcbt01mQKbiwynDJz6y
	x2V9dZx08Sy1ju98mP2Fkh/kkITnows5bc9iFtJNHb7nGOKhxXiDly/z3453ja5F9yngy0rTT6H
	sQT+Tyd8o6RvMp+rixWn9MbaR8UYW+ZYcEAwB0SwsHLuIHnhgTPGFEJ0Dfvapd6mQ/zkN
X-Gm-Gg: AY/fxX5zN4iSK5/kH+7/3B7dIUApQly930/jPCxYvYdf2GoDWZ05HD+v6EVYyW+FlA6
	nx3GEwpXstfeDw+H0FzFGVBiyaDxpMQsDLnljjAzxdqQrpdf9BKSIhzF843cy5gMty27bOnWWNC
	QiWbYB641QpBOO6VGlJv4v8TZyh6ZPM4Fx/GBnRJKLUjpcXeE27p3xe6n+iXjdCtfAbwPV2hDSe
	6NBn0N51LSwCWtOCZUrzcPL5c8kTsPR7dfRFyib/jfAZ8cgbVBDnCYEEi8l7tSJht79V291vwzA
	Y2l/MfgnzDz8ZsmFxekBKmBENjwQrJCVgl5dcqDuWusOeJhJ0CJmt4BV8NgukUlc5JWB5SnOE1c
	eUYGvR06wvLq+cNd9qpSFKyi4zADA1LdCzv5F+9ZlPKxZlRe2SjCZ6K0/GOX8QqlqqAabEJbJ+1
	ZR+xbQCpMVGQFTGy1hTLLX81Q=
X-Received: by 2002:ad4:5ba8:0:b0:880:224e:aab1 with SMTP id 6a1803df08f44-88d84528a09mr244147726d6.66.1766517418496;
        Tue, 23 Dec 2025 11:16:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFvQmzeC4BQeSyXzH5XF4TCOT/b5LKKvDBffg3bYRMwHzp1bwr9H95CVDHYVVaX7m6jEalwJw==
X-Received: by 2002:ad4:5ba8:0:b0:880:224e:aab1 with SMTP id 6a1803df08f44-88d84528a09mr244147286d6.66.1766517417907;
        Tue, 23 Dec 2025 11:16:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812262ccfasm36207351fa.26.2025.12.23.11.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 11:16:57 -0800 (PST)
Date: Tue, 23 Dec 2025 21:16:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
Message-ID: <niverh5ydbah6axshbtop56wjsoluen64anojp3nvizcn4bthr@h4yickq6gtea>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-2-krishna.kurapati@oss.qualcomm.com>
 <aUqjG4pVXWN3H88N@vaman>
 <bb775051-8635-4e2d-a1f9-46d6f0e6bc15@kernel.org>
 <aUq51TxXwiJE2DWb@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aUq51TxXwiJE2DWb@vaman>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE2MCBTYWx0ZWRfX3xlsTiYuENlr
 Bl17R3H+lOmCOpAcvcBf1gwOfn2tAyz5fNqsx/Mu7C6ZIaZkJItlxGlAyDfk7og6GzW36FktEXQ
 eai/8KFAILlJ0PXSvkXtWxZTAWWHi3EXmMEIOmK6iOHTp3Wp2LzZoBs7UIugoJuwOc5xAK1GsHl
 N1kJT/IPlr4B0vBZF4W1fa9DYdz9U0ZXcZ8TlH05/BxxOlGe5eiu/2pOFdWBhPknDVbblkOPfu0
 QeU1Ql+NfpM+gc0uU993+fA9X3dr1rqdSJVjKw4v0rJ6niGi7JgTBDxZEbKqQCM0qHHBc07OuGV
 9x7To+r3onz2eTQdvlUe8rkTShw3fa44vr5ei7WcAspjGKzeQH3PuGvaN610cwj4CDl1EneqLyS
 kI2Amgr9l1an6RplGG/Ah245BAzc6p4mpscI/+O4rLHPCoOI8yLdhBy+HwB2Vu7PnV4REmQ07EN
 nxhVaOQz8UKiwZkFRCQ==
X-Proofpoint-ORIG-GUID: fkNsCj_5CNJ9ilVYwtUPr6VOL1fbr5R1
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694aeaab cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=htvIOx8lbTYegf9zheoA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: fkNsCj_5CNJ9ilVYwtUPr6VOL1fbr5R1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_111701_526519_C5FDB6B7 
X-CRM114-Status: GOOD (  19.67  )
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

On Tue, Dec 23, 2025 at 09:18:37PM +0530, Vinod Koul wrote:
> On 23-12-25, 15:16, Krzysztof Kozlowski wrote:
> > On 23/12/2025 15:11, Vinod Koul wrote:
> > > On 19-12-25, 23:01, Krishna Kurapati wrote:
> > >> Add squelch detect parameter update for synopsys eusb2 repeater. The
> > >> values (indicated in basis-points) depict a percentage change with
> > >> respect to the nominal value.
> > >>
> > >> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > >> ---
> > >>  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
> > >>  1 file changed, 8 insertions(+)
> > >>
> > >> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > >> index 5bf0d6c9c025..f2afcf0e986a 100644
> > >> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > >> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > >> @@ -59,6 +59,14 @@ properties:
> > >>      minimum: 0
> > >>      maximum: 7
> > >>  
> > >> +  qcom,squelch-detector-bp:
> > >> +    description:
> > >> +      This adjusts the voltage level for the threshold used to detect valid
> > >> +      high-speed data.
> > >> +    minimum: -6000
> > > 
> > > 6000Volts, mV, can you please document the units?
> > 
> > 
> > Code is correct, the '-bp' is the unit here. Unless the suffix was
> > chosen incorrectly?
> 
> I was hoping it will be commented in the description here.
> For my reference, what is bp and where is it documented ?

Base points, 0.01%

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
