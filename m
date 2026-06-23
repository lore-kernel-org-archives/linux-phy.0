Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DAB0CDB470
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 17:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvgfPOcStYIEQCeEk1kNFlEJEYXl8tPHiUDQL1FR/zA=; b=svAiwv3hk12eEO
	HGEDbw7hffufsEnCBZFhJa1Ze8XCIBXZyoLGL5ShCyMk8uhkphe+q0XqOqu4l4lSbWXYkuMLPsTbl
	edShofNBgKUR/nb3R0ieICAA2aUoRrQndZ/jFpFkSxEMxtUIU8+POrN8Aj0pdJk7MkL6u/CZdhrzS
	7EPecU19WDJDBQtkRdl+gHjkyqqFZLwvonXFQ5YjKeF+8WqaVUQK6daNAXNGTEzIGXgCIcnLiv1JX
	F/TPixkrUyZUckhnSOSxBtHu1EweKiA+tibwNbCAXMQ4rpIMF2eeVWvA6iNovUV31fJiapvZzUpbq
	pXSwoMIiO288yfZX1EyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc5O3-00000006jeH-0Pyk;
	Tue, 23 Jun 2026 17:58:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc5O0-00000006jdq-419C
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 17:58:14 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NHrwkZ1156160
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 17:58:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Xwxz0y1QgynK3CxOjDot+ZHz
	k3QiRVKHLygIBMPihZs=; b=hfId1Zr+i3JPaXe/aJ0YPJOtm7vlt9YmQIkEEPAC
	scwENPBBd3QdWYCM4L7+urNIETyFCmtPUiP+a+kAbiuD4VK7lHYjvZBaR40xPMlm
	7UyWhl7b7cNzOnbZHCW2Tc0l9UdBkYvQJuLrx04Q4m2EIyU1gIbVGnEx3dOfY8fq
	4SXTlYl4qS4Y2RqK5RMBHAYnUWo1DcLRJK8v86aU+vet289GnoPQDe5GNCrXFXXv
	tWQvwlpbh1H+v8vanwWYd+CT4WYBC0QoWdCqOjqJjrCc/ugGzAt6Pq1ol0se+FGi
	J5hnmmShN/cw6iYf0mnIrbwVfHDqoQgA/3QJSNFiCnNtzw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyr28t2d7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 17:58:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-9157c8eb597so5916785a.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 10:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782237491; x=1782842291; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xwxz0y1QgynK3CxOjDot+ZHzk3QiRVKHLygIBMPihZs=;
        b=imyWOnfGvR/2svdzyLRtbtVGGPv/4pYv+bSpyHv8V5sOdrHzh1w777sIP3ajsQq43D
         asHduAo4uLex1ROsxd4zvQe+1aBowEsxw6aXJvxhxRjh4aMpLrEXmGsCUiAx0NSRIOdo
         JypIfydIuuhvR+RDt4yugGrJbi6MfyQmGDMRdt9LD4/M1/fPMlr9kRNxiIPH1zkEDMtD
         XkWC1vDmdDjLvo+CkN3SV1RXi3KQ2+qpIhPWsUE5cC6OkpqMqwd/CEVrxxn/PnhhNffO
         4rmu6ldzkaZWBxxOsMG50CjGCgKtprPfks3n52GPlJ/JO80I8Wkv8Q2iHnTzb7unA3ki
         3utw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782237491; x=1782842291;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xwxz0y1QgynK3CxOjDot+ZHzk3QiRVKHLygIBMPihZs=;
        b=CN1UlfFX/OpZI8xRx2DcfDXOZUVhcx0kQXQTwNeiZHnhvtAMBe6G2ziaYpugTajoMy
         izqzoxvyHmYGxrV4GvppCn4kJfhHoMutO4wPhBBC7XBlrQjM7Xnu0XxyDOS5r0Bq6GZy
         Tw+qFGEXMh/Hl+rAkdeiuEnn72w3lriIxT6uo3b7yTur6CLs+LqlVOAawQLd1lS/Cz8p
         EAkbwJpINH1/JmD6W5BZoQh3oVqvsVuayHgS8y/7FK55soOA6kUli7VshXOUPTBvdRiB
         lMJAQlrv5U1eavt55Hc9wMxBQT8eZNi5dYEcOpJcH0ZKF/CcBGPAI+dDpNLPziyHprVf
         N0DQ==
X-Forwarded-Encrypted: i=1; AFNElJ8Fc5DCLJEtzEGLORzbY3cYlWsa2yCbxau6G/vLjjy4N7+JwBJILjOP14xMOf1HJbgLmkOS1Ao0XcU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJO/3vhtDNn9omxwA+PrWAynG2lcJuotyE8zE/wzrfVN6pYyNc
	XKBuK4ZvYkbpIsYxMJuuWNKu98dYfxjjNfxkftIxeBzQeBJuKu695v4R37mA7ji1B0k02uUGFVj
	BrP04neRsHstYqKCrevEnQnaTr3tJjdWKkCPyMr9qhAHBcZBRiI7mXBolCiDsa88ejmKj
X-Gm-Gg: AfdE7cmamy1SCheNFiNXNdp1YNWhBFrSVG50XnxdHtBHfw/vngJYf/wJGJdi1Qqtlr7
	2Xwwc4xpfVO1l39rzRrsr9/ZbliHSwbCGg4Wk6/7GAfkRMMkOelSxwkWY8NZ7X/6P62wFXzF30k
	AR2Fr8J5XbQgwZa4FRjaSTGQ+kyOEm/FiiGPiftsJkGQ2WQnO/3haoEIMGTUpIU4hQWnAVfwvzQ
	aroJZUZvVrPPGb+zvS/70GjzD697BnPz01w2Rf3RHkp0edW9z4GRsgQ6D8aajFRrugvAr13FzXB
	Ag60N6dU9grQignWLLU8QSROmErir+64/MHTqrptluh1DmzOxlIoXoLurM2ge/X0ZvkmPxKb4D9
	JyC5SBBwq4wwOyq6KIA+1yE4PS0l/RMXlOWioCI/KQ++v6Bn3Sdd5nkxRuhINI4rFJ8NeEjsydk
	GFahOWUMWdoziJUB+APTIWMZlM
X-Received: by 2002:a05:620a:1b95:b0:915:8988:4e55 with SMTP id af79cd13be357-92783f2c83fmr10718785a.40.1782237490981;
        Tue, 23 Jun 2026 10:58:10 -0700 (PDT)
X-Received: by 2002:a05:620a:1b95:b0:915:8988:4e55 with SMTP id af79cd13be357-92783f2c83fmr10711085a.40.1782237490337;
        Tue, 23 Jun 2026 10:58:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad69580f08sm992714e87.66.2026.06.23.10.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 10:58:09 -0700 (PDT)
Date: Tue, 23 Jun 2026 20:58:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 4/5] phy: qualcomm: qmp-combo: Add USB4/TBT3
 configuration data for Hamoa
Message-ID: <r6eyzzflushayh35wjqn4ubuxffnac6asf2knfh2erocaefmhp@mchrnzhjxjni>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-4-71d827c49dca@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260518-topic-usb4phy-v1-4-71d827c49dca@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDE0OCBTYWx0ZWRfX7gq9EqS6Vygm
 MaI3ux8l4TbnHfWTPIIt58fOzqaA7+9PRPKWZ5I1vQQBzLX82RRD4pDM8zqstWZmP4ErJZ48ktg
 I05E71jophlY31RWGZxnhh3WQKupWTE=
X-Authority-Analysis: v=2.4 cv=b4KCJNGx c=1 sm=1 tr=0 ts=6a3ac934 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=q7KAvXTRkkGcKGliRn4A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: vxjqjIueVAgrw_L1s4eDOgJ635cT79UV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDE0OCBTYWx0ZWRfX9m7d2OFE8G0u
 Y9JLI8fdU5TbucosOW4Tho/7L+/gjf2zBA6MMPe66/TU3uM8J+5OAENVajxdiJevZ77+NDWFot8
 f+AmUFYUQZinymbemcqavcF11dl9VE1pjWh57rnxbmxpYyg6r5/YlcLvcF7WSBjiDri9KRVHWw5
 g3KygLdelGuVpHDoI9GDORvMBl4QdJyvZIcfXWiMfbkMScqcdAzAioC4FgMZlVSQrs2KtvJpeV7
 SaztYjogl1QAIavatk+XIV1iYns3KtNIzm4vjX6zsG+5LzGsyoC8rfzEUFxDuQwmSmF5AHwG4UB
 /4CgfPwdB0lxbXdvo5kN7ZX3mY5FJ+/SSKUD8lC+zzpwWf9GyYipDZ5Npakap9nEEBy7n/Er9jt
 XyT7ZH1rSUIIwAbF+QpBiknOEzuhBtD6LWUzT64vk8EMwR6yGG1OcB5qfj+aUESi73ZC834OFqm
 uZXB/NPKd+bo5BN8bwQ==
X-Proofpoint-ORIG-GUID: vxjqjIueVAgrw_L1s4eDOgJ635cT79UV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_105813_003981_15E3D2AE 
X-CRM114-Status: GOOD (  13.92  )
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

On Mon, May 18, 2026 at 12:29:51PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Add the offsets and configuration tables to support USB4 and
> Thunderbolt 3 operation on the USB4-capable PHYs found on Hamoa chips.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 200 ++++++++++++++++++++-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h     |   2 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h     |  15 ++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h |  45 +++++
>  4 files changed, 256 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
