Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C712C88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 15:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/A+dQ9AVza/fmxwZ4zQWDnJawiFYrRsVe+aBx+4/F6w=; b=qUPodGYp0ok8FK
	DBhq7JSf4ewrrIM/WY9WYz/fOxb0IRDTWrD0MBWSZUGVJvQRbArVIH2D9lx4ZdjDFyjTv2QbAwkmC
	7q1JPj0t626WnUiA6+rH5RBolvxehqi+zQX3Me6HuHxidYwtmRBw1frpi02dYVj+63wlsqddSvxGc
	06rW1s3BwN1ABjqmjNQcE6yQh6A6OkIWOWwN5A2C2hFFFcTl92X1bkKXigDXnOF29kZcmhIW0Emdj
	I4UGNVvCgQUWDHXmj270opYEzdYNMSXlUPCAC44X10cldDob16nb3L++NdLZMKqDovXxaiORgUL7f
	5LY9VRI89nHHuOtBLdJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5m0G-00000001lqC-0VBg;
	Sun, 13 Sep 2026 15:20:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5m0D-00000001lpt-3Hqp
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 15:20:23 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DE0Pbv2118615
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 15:20:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8SqdPP41lYHYCTdkr8owB3wjXGz3LwpStONsz+DELzE=; b=UXUdYpRwymBhpkca
	0NdA6NdoWFF89CdeqIkpAQywZyfpkF9as8Ev1Vu/t7wmec+YDYbVVYvsgTt7uk9z
	58+Sram/KpKxxPnIUCBe+04SN0yudkAx+9jxQ6CYiP+HG5K6jeJx3A2lhkitPPKX
	VWEHkfdk7Thoo40SQFDalCdDMCrtlTM2h8Co9QynU+6HeIVYlCMxzfM9QW/4h02b
	3qhf+FRCDlxAIiliZ1tG7r0gs6Tfq3p8FU0w+Tu/MhiRtG0ToUmhT8KgjyrhP3lL
	9FXHnd73IFTMKrTyJjpTqPOIdwVLYrkMiVLSfLTqrPWgHyeR8d2FbICFmgTRbHTm
	gsM31Q==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9cbj0s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 15:20:19 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cbb92868263so2089601a12.2
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 08:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789312819; x=1789917619; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8SqdPP41lYHYCTdkr8owB3wjXGz3LwpStONsz+DELzE=;
        b=L/wS16TpFS/AJAC9XC6q7C8nMnwTwQHVGsfgSdNJshSaAXnOIkpnFOh+GhywiaYzfI
         8FvbGLBOb1WV7MP5Y6Wv2oYb1MBG8CTzLjr/45sC09fqoTpUttWHPjbjoSBnOkfR3ss8
         zRjQypWqbmUDNVa0jPl+y5djJR6OQM4+dQ9DEKnFlhqyQJkxO3qfTGDnN3aXy/o5taFi
         r5dhUjN2kgfB/2IAsv7KC1vwJaU7CoV/0jow68cY5td/c3enA007izR2DCNJ4REy4O2t
         Zs9gYLo/DzQzIYdYuzWI0CH0HNNBVCKu9TfxQ3Lxgw44aGKqfyGVwphv/QJ/a0S+1RrL
         blXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789312819; x=1789917619;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8SqdPP41lYHYCTdkr8owB3wjXGz3LwpStONsz+DELzE=;
        b=hr6Wbnev7usg7MSHgjiU1xB/3+CgKNBqrdv6HvNgDUvkFNH7WiXCh4GmFG/zhB0b2u
         7huoIr6ymAJt3Lw9YLFli6sCGr452xUYmsyAfX02BiolwZ2GysTrQ+OyAusWtSbOLJtH
         OYIPeAZyhginTXOkS6+tfDOIyL+VXLS2riaadVuUc/WunnSb3+czCIKbKRGZ0O/vR7/Z
         16z9Xno/S9VGKv+hLDhTdiD203udfkr53pGo7new3aga2UC2HuEaxRJzyUbQEBHycUTF
         9MSTf442RsiwmyRLQKKxG0PZHTLC7kTJIMTfBBZXzifINjvFNGdRGDcri3XdnboXv0Tn
         x8ag==
X-Forwarded-Encrypted: i=1; AKwUvByfatD9hVowCdyVDGY+Ri7LO9fpfFe/YMHBnVCmSKpequwZqFeyoMsZUJB2KrUKHvce/HSjtWllTXo=@lists.infradead.org
X-Gm-Message-State: AFuF++mB59jhrIB4ZnXCfHgWGrCbn8yf7h4Pg7VCEptur5xILpPPErWx
	sYJ661/12TIMKXpa7laL+aW6HpHlwiG++bPye3zBp5BRDVPDjtdpt2YwYsp5GdykiNYOBKzoFKF
	ZJZcQcEMMxDHusEx52UzBrm6wo1o74icet08SMSogD+/8JUNQaUxY17IWcsBtd7z/7zFS
X-Gm-Gg: AYBFou0CN3e9c4sZdihL2gGLEN411Eo250FUgZJKRkYE8jPiB6fzs9W6iLKenAtAheN
	PB56mjCYbb0vgyJ8J8adjucxZGIo+qeOuBwptVu7jS2CFWxkCHuRm1yNePX4DzLPkMFqzXfbhsB
	l54l4rU5IdY1BmdOSPmB0HaOxXxNhst+vnQ425ubZXoGnS+gnPAc/Pg4xjbPNlOYXVHvDUQNrXn
	0XCC89PLL1bpWKiJG9TzPD0FLYz5ijwk7BYiQlwghdcifrJ/Q1yMLS5tL9l+z00tGcIPNewCOeW
	9dSC1ufKm6vJoHz8SI/+yhpbMukYhwtq5aoS2yi50x24xwk6rmkk5y4rK6+ClibGvOSxNIa8Ke7
	1XiFJjZnUNNozb8ek4eJL2s8zfWC+7Q==
X-Received: by 2002:a05:6a20:939e:b0:3d3:adbf:7784 with SMTP id adf61e73a8af0-3daed4ec53emr25613308637.25.1789312818694;
        Sun, 13 Sep 2026 08:20:18 -0700 (PDT)
X-Received: by 2002:a05:6a20:939e:b0:3d3:adbf:7784 with SMTP id adf61e73a8af0-3daed4ec53emr25613246637.25.1789312818313;
        Sun, 13 Sep 2026 08:20:18 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.233.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33ba4cf72dbsm22243050eec.3.2026.09.13.08.20.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2026 08:20:17 -0700 (PDT)
Message-ID: <93c23619-f5e0-4998-8da4-9742d9e9be9d@oss.qualcomm.com>
Date: Sun, 13 Sep 2026 20:50:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Add SD Card support for Shikra SoC
To: Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260911093932.2376058-1-monish.chunara@oss.qualcomm.com>
 <20260911093932.2376058-2-monish.chunara@oss.qualcomm.com>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260911093932.2376058-2-monish.chunara@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=e+mT2qp/ c=1 sm=1 tr=0 ts=6aa6bf33 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ygYGJKfEQ+goyyaro2Znww==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=UBd3s1dwWAu4bQkakUwA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDIxOSBTYWx0ZWRfXw/dvJfirfKgB
 y8hW83P3mDXpbjtnP7Ji6O3zX0YxWpi6PKP9SEgmHKYjcHvQMprIVgFdJheqrV0nd+JaanHqZEL
 IOtNIerUcOpiTgfeJgaGzlNcC3YVrqI=
X-Proofpoint-ORIG-GUID: TkIQW2WUR5-4wLqYLji0KtPojEl4Mmqo
X-Proofpoint-GUID: TkIQW2WUR5-4wLqYLji0KtPojEl4Mmqo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDIxOSBTYWx0ZWRfX8qH//D6Fbb+h
 HoZzE53mqT040ae6uBBK/+42hMrXhrijlw5u3lqerdhs1ZRILWYHJZVdJO3LFF5ntHLyjqfHqwL
 HTcaO01XsCM0ZJxX4LpC+/nYDHJ8IqUzN+5scPg+AvM+DdgTLQhQgjC0ka6a5wJWXG4mfAyjVdC
 Y3wf2rpQcML1JSVhHRHIf6cEQ7PNH6B7s3Uoux9egfgUAqs8f5NWkTbO0BOR7rebNhbaJw4pVpj
 BigEHlRXomUFzhMmr1LMH93Sw/9ZBDS7MxjNLAVC5w3hFjOxdUWDxn68aZDRRpFkRRftzfGa8DZ
 PPCvySkvlFR0+DTj6L9p92XSBVf89mIIW1Fp5fc6Tq0nV0W1qs0wa2lEjudTKzBqszF3D7c/ns1
 3wYfs/gzjEHzJFVIv/y22nl3X6/TyFnLrc5nWnyDj8q9R1bVef+OaFbxmcPS8oc29OUqVg8s47x
 N7yeg0ZEuZh14IdYxMQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1011 phishscore=0 impostorscore=0 spamscore=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130219
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_082021_976773_8A2AD990 
X-CRM114-Status: UNSURE (   8.61  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/11/2026 3:09 PM, Monish Chunara wrote:
> Add support for SD card on Shikra SoC and enable the required pinctrl
> configurations.
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>

Reviewed-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
