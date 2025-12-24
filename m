Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AE76E7491C
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 06:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUH4L0JXn/q3pnbLYzOwYcgd04hiFU6v24Axb0eghJU=; b=REHellgR+HWqW6
	0yf75YqOWcXhWLae+a8950H1qwFf4UiW+ns7ouit1gzT35xoG7gdTiK3bwhi/PC0zjODnzB/4ma3p
	9HXXZuIfPpj0IBshaJf2/b1D1BG8rLFPqSiJsjNKxU8CizniUSjajV/lAWmaailI+C7A6luCSJLPM
	Ls3/dork1NsqsrhWN158E+7ASVRrVvlogtaFZ4OBfMUPIpbKqd1Zv72YtWQYVi+YVNhwm03g6o7hB
	pWbjpQLmX+5OBvQY5Yx02oWKVmTc2HAvoUkLARChn3+KttZiSaUf8ZhbQoDjxWLZ/UrZKblXV7mx0
	vJOFCQrbAluGm9wAZK6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYI90-0000000GTwT-0LyE;
	Wed, 24 Dec 2025 06:14:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYI8w-0000000GTvR-2rfi
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 06:14:44 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNNF15l1123243
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 06:14:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=y4Y2eJpd01HJFBoLg61yskNy
	Rk+YHfsRYzlZDofyEvs=; b=EkmxE1dJax0sqron4lSpSGL9jF6pJr6tmmNMRWPP
	brbzcPzXYT0+CZC+phy9PCKoFll+tgH3Irb/9vKzrOnmwTzTIbG1ndXKVyQDqYcw
	FGDi1GrOIgSXnkhwNZPsxtExgbZs8fETTcZiKBGv7abQtEOLG/cYhv5AHRnTTks8
	TQ6iFbGU1wfErsptEhLY39uJTeRC9C8O+glLvIX7zOtaoXEyVeqM1uMsRxO+FHtE
	OuTcYTtarEO0MfKHvfkMo8I9v2X1AqXDU0pBOQoYzvIVaLTZRJ5GLL+xf+eqt4E2
	LVt2SXb3v77h1b8bt+nhmXL9pa7ZmTzoMBDaPXttlfFivw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b81mt9acf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 06:14:41 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c196fa94049so3972485a12.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Dec 2025 22:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766556880; x=1767161680; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y4Y2eJpd01HJFBoLg61yskNyRk+YHfsRYzlZDofyEvs=;
        b=jX3Dp68NAkubd1m0DoxJvaVwlvQoCUwxnDvy8NUdidnOM+1pnkaJHCdIwtRDy4l8UZ
         CIvw/NX9BW57PvVPGu89YDhYXRMmzilBm4+hcMBzhWF0wfCyH+kXS5v4bV8OG6DwqluA
         q4Q6RXqaqYafhFW/fqfXjpqvY+8Yazji5AE6wUNKFqTV7ulzuS3yg32MgaAhtk15Usfn
         kOods/N6X/H/LfwVRd/NJm0KiAR511Q1ozYdU63lorTWg1s0ULNQ5hWbIJ7NrefPdfbx
         nSX9W5hDantLO4MTrC8TGeSPlJgyw/XQeTBpgS2FR2iRsjdH7+6NMdjDMmYuF8daU9zX
         5BRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766556880; x=1767161680;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4Y2eJpd01HJFBoLg61yskNyRk+YHfsRYzlZDofyEvs=;
        b=r9CNZjPG3m2pb2LiLSuaxryU6e7Cs01l57XuthCrVHgNmX6Qe+rF1hABgSm6qrDLOy
         LmfC4SvG25ZH8Bs21rKWwTVKO5H906Edb2gKIDXNiYMmVdMAB938K8VA7a1ccK70Zvgs
         Vr1E6bgbpOIsbnIGAa5TeIGtbzhmP2hiVvpnibe73mk/kbcOD9goQxafK3XPcgYP6abw
         GE/APYHP3smx29RAyaUe/tfa6CHwDvSBafjiJLb/PmdG7phfxT0SOmRPnk1ys0af+/mf
         lKtaeythPNrWMzQeFJUVyZvWnLP5mxwX4GMdxzPlhHD99nFFcz7+ElmfqINU/YgsBEpL
         msnA==
X-Forwarded-Encrypted: i=1; AJvYcCXbdNMNv8F8/LICR0Mllis4BqpvOaGmdrLEA6MfxsbcmzK0bs/iSZouwMaxODwJ/OlElpA25zFC+3A=@lists.infradead.org
X-Gm-Message-State: AOJu0YzU7JGJjSapmy6FpzaYkODUolfK4eSi2ag/Mv/AzoP9enxy9lco
	+xo7ImQ4ec4dtT0Snh+fAFR7U+KrAESvcEiFShci1MzQo9ACO3YKxpcJo0Q0XRTtov5Vg+knZ4Z
	vGxrVyPJL94aiAh4uTi2nN+RwyKcMeI3kmAeVccAme7EhMnMZPIM/ppW875DPNvRrhO3gcgTewS
	tkGZfXwUO7Rb+TpgHPH827+8FFzy2ObrS2jOgZ5g30SEQ=
X-Gm-Gg: AY/fxX6fOpMr2QMiFrwqz49cWGhYpoSkWbQ8osBaHiOLO6xz/NPVY12iR3OkISOQx1m
	AJHNi4merLevHHGAKrXxgS0NlVc3+qi6yu4n4r+Vxdn+THiRu6Zy/aP8pCzzB6c880kBwQ1Ojq4
	8xUOQjC0P2nsTnmLaoD0D8jmDxeWC43I15iyV0rvN7zCmoojm7P3Aud2N/04UDmKkShab89nIwO
	KOxDgmj
X-Received: by 2002:a05:6a20:549d:b0:35f:84c7:4012 with SMTP id adf61e73a8af0-3769f92fca1mr15946109637.29.1766556879573;
        Tue, 23 Dec 2025 22:14:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH4JuSjzOmAsYq60WqT+iMGYoFGCeh7KItyGvZg/ifrCgKqS9atvgGzJQBVQMSMXaQOfMr1tOIJ3hW1Wqil7pA=
X-Received: by 2002:a05:6a20:549d:b0:35f:84c7:4012 with SMTP id
 adf61e73a8af0-3769f92fca1mr15946075637.29.1766556878842; Tue, 23 Dec 2025
 22:14:38 -0800 (PST)
MIME-Version: 1.0
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-2-krishna.kurapati@oss.qualcomm.com>
 <aUqjG4pVXWN3H88N@vaman> <bb775051-8635-4e2d-a1f9-46d6f0e6bc15@kernel.org>
 <aUq51TxXwiJE2DWb@vaman> <niverh5ydbah6axshbtop56wjsoluen64anojp3nvizcn4bthr@h4yickq6gtea>
 <aUt6E-AVVVkmo6E5@vaman>
In-Reply-To: <aUt6E-AVVVkmo6E5@vaman>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 08:14:27 +0200
X-Gm-Features: AQt7F2p-49_voSHeXukQjIp0q4XfVcdPaPXZp-io6T989hQWj_PsEKJ6SPIeXbA
Message-ID: <CAO9ioeVst77YgcSZCp5p-e9V7iztnmeHhQ10TdLzDKHVZJ=zag@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
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
X-Authority-Analysis: v=2.4 cv=e/ILiKp/ c=1 sm=1 tr=0 ts=694b84d1 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=YG64nluAAAAA:20
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=itlchkg5PgSt1WyP9K8A:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-GUID: USiZAPV6eOdEcAPDO-HZ8Dw-oiFrK1MQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA0OCBTYWx0ZWRfXztKXwsz/7WLJ
 xXNIZ4Z875/QTpiQoSdcM50QSUPfAPmnV/KSjZfvzm2RuVf3p+40QI2CrzhSYXlFM2ivoYwaAv8
 DmthTeWdghuWY0oCQ0MY9tkeSHqEeeHV6wKbbCyllT1CpQoBiZBMngvaTmN8IAyys493rYcvjSG
 IRwYgRyFh6jz+/WvpiIl2V624BYK/uQqmtOCe/Gt5nNLQXAmHm4V7wECC5ldtMJxTIKUH31J934
 2JCPeyixRewyCgD9Shp5NItIqgTyiWDMrZH5keooWnfSPd9dmCDqAV9YU98r67OvesiBaOXvZNt
 1jI0r1msNteoyCN61F7Tzhdsben5Same7Jti3diPAdSjINEBIbinezXzvMlnfrEquNCnRzGRgTP
 8chij6svioeT9TlHRn7iH+SNXsc0g1rG82TRotMYXVAesJ2VFQIQMKWPXdc1finGgHoLs4abhBe
 XfnpCPpNbSzE0rXqXBA==
X-Proofpoint-ORIG-GUID: USiZAPV6eOdEcAPDO-HZ8Dw-oiFrK1MQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_221442_838700_42FF9B64 
X-CRM114-Status: GOOD (  22.00  )
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

On Wed, 24 Dec 2025 at 07:28, Vinod Koul <vkoul@kernel.org> wrote:
>
> On 23-12-25, 21:16, Dmitry Baryshkov wrote:
> > On Tue, Dec 23, 2025 at 09:18:37PM +0530, Vinod Koul wrote:
> > > On 23-12-25, 15:16, Krzysztof Kozlowski wrote:
> > > > On 23/12/2025 15:11, Vinod Koul wrote:
> > > > > On 19-12-25, 23:01, Krishna Kurapati wrote:
> > > > >> Add squelch detect parameter update for synopsys eusb2 repeater. The
> > > > >> values (indicated in basis-points) depict a percentage change with
> > > > >> respect to the nominal value.
> > > > >>
> > > > >> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > > > >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > > >> ---
> > > > >>  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
> > > > >>  1 file changed, 8 insertions(+)
> > > > >>
> > > > >> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > > > >> index 5bf0d6c9c025..f2afcf0e986a 100644
> > > > >> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > > > >> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > > > >> @@ -59,6 +59,14 @@ properties:
> > > > >>      minimum: 0
> > > > >>      maximum: 7
> > > > >>
> > > > >> +  qcom,squelch-detector-bp:
> > > > >> +    description:
> > > > >> +      This adjusts the voltage level for the threshold used to detect valid
> > > > >> +      high-speed data.
> > > > >> +    minimum: -6000
> > > > >
> > > > > 6000Volts, mV, can you please document the units?
> > > >
> > > >
> > > > Code is correct, the '-bp' is the unit here. Unless the suffix was
> > > > chosen incorrectly?
> > >
> > > I was hoping it will be commented in the description here.
> > > For my reference, what is bp and where is it documented ?
> >
> > Base points, 0.01%
>
> Thanks Dmitry, where is this documented for people who dont know

https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/property-units.yaml#L48

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
