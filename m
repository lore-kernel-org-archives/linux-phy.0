Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 084AFC624D4
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJuRwiUYNrcFo0EhwOZpZJ22rSuTIJGDVdEijYUFv08=; b=1Bt+bwX6aerieI
	94URKigoUmG3wHS/xqy1J9xSGxOS4Dpt522voSBWwrNKPFPtTEc3onGy87AIre+6zhi8ig4iZPM5h
	WOjfxaJCiT0sPNAcpV+LMgTxNS8Dip+FYxD4fikgDvmQI5XlxVuYkdkOK+UWtRrg6EvIszFk62lXa
	uBmxtZL7qnY7BxGwnLRKVY1/PWsxjIZqI9Y//O16unVkhbyej0X+bKVxUlgz9EJI2gDCK0JVGxMbG
	mi4VKa+zXI11q6YpIfw6NsBg/47d7CV7rjC4mhmybDST32hje7hV4MO0tXFJbzuv0C1sDzqaw+4pF
	roYMEv4vQt+Cm4wtJzdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OJ4-0000000CBJl-2zGM;
	Tue, 01 Sep 2026 13:13:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OJ2-0000000CBHp-1Azf
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:13:41 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJdwh1713040
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 13:13:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H3xHTMAfV/QCmIrjOhNyUOsdra0RGuUp/HHKVpaq+N0=; b=VHb9FEdttwlDQVrZ
	KgQWURvBgc/quc7TJyE+w3PbTByG1vYi7MHXpu9ZJbFakEDPqZ4ZLJ5C8tyuymiD
	R+7dKT8ekg+8+PoVKU4ggvVUbzuk/9RtZisOjUHjmR+l72TV/pukHRzOIuvbLNVD
	7yDFMG4YlzfERKbO20hUNq4/TE8DxxhwyYPS94G5MR64/53lnh645KAJSCarKly2
	OlrL5uiFHdktT9sXd7p6bVldos6htxzX2Dl9vmHBKWa1Cy3BVcHKCBO7aazcYBTW
	VOig1Ndd8wD5AbKUiPrK35o396tKkUGtp2+2yjZ3O8LVxUB1VBuAJXdVrd8mvoNL
	XuJV+w==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdndxap3f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:13:39 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5c7a0e125a6so93414e0c.3
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788268418; x=1788873218; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=H3xHTMAfV/QCmIrjOhNyUOsdra0RGuUp/HHKVpaq+N0=;
        b=SIW2XeFkeruGmguiVSHaplQgKwXiUlOxQqHfBXnNTffOoNmuhFOCtH/hZrPS6uwSdZ
         FpmeZd7P/x3uuPVULzdUoDFHTzWN1xuv2b81+jhhn6gwZscBmm/IWsWcGZvhnQB+zpse
         Phr2IP6v0KyqIyub/fQYDsEHT/FoAQqkPucpatS5ViI+5LSnw8gZ8mBaEkai2TNGNgg6
         TivGYmTuJZQAZRF9YCJxad5VAews7dcsgLfWSJKoPHAYIh9R/iN6bOr9qVTYPM+n9pHe
         qOVIrhlAH7q/deSwIymW8fXQ4dJ24Q238Ka3EAaIgCclP+l79BvmB3ufbWGt8bJTaRO8
         F2hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788268418; x=1788873218;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=H3xHTMAfV/QCmIrjOhNyUOsdra0RGuUp/HHKVpaq+N0=;
        b=idWGE3FMLseoQw7l/uEMpB0UB9WePP6PDrEHNQgWJNVy+1UJ9qYkox575kXChU+BuX
         m7/yQoUy9X5t4dksXYoRztUqkVhUbd53LiXZebycnVoSy0PtYy80ptznP0n+3y8Evz8g
         spegLJBE833oxxmlHxTw5ef7tpLWhNhzYl/OWo9w5KuxKv1XlXr3EM0gO1Fpp/fNSpcb
         BuH8EiWsPZtdE20wPlUUPfbbFaWJiKhkf2h7xqFpEJkHRI/ZLtbFRov88LHKRdudivLd
         lDbfGbXFGy/BOo6Kb9VQDm9JO+PtRQOwkRVZvLMQGi8MfwHUX3tEvkkJxjMDObSra59q
         3aOQ==
X-Forwarded-Encrypted: i=1; AHgh+RqewMnKv16K6vRHr8/5sskBI8IYNAUYC+w/SJfYQUnX3/YQntopGfAIelZVu5hrfQ0rABYgLHL8sPU=@lists.infradead.org
X-Gm-Message-State: AFuF++m+GF8Yrei0kY+VHKX2tjvK8dZm/GOwhftaMldop91mKQvx/+Yx
	hpGyWyHZTy7Z8DiqCztT/828LdHIjAhE4MkMGMIGegsKLH+coR34fjxL5Ha+cPoJjgcPXoOABbD
	OKi13iiyZWj25bEsGC1jKcOU/ytNoklfnCfcuNOu1mEeC1YkgGW3SKSBzMWo+33CfbPiu
X-Gm-Gg: AR+sD10zjmG0vH9quXHXepWjN1PBBTuhJZQSCdii+k3bmwIpGn8HmTl3Npi80PGhpAD
	bv/sDItcdYsu/jCbsyT8f13SsIS8j66e6FugTB4fHBvxz35RrmF2WRMDpO/aWP3eiAzCks+8ZkW
	LhnhV3/y8OQ3YCWm8iv4ucOChJdV9XAMB66c1maWvaHUQ6B02024KhlB3Lf0hYc5qIdy/jDXvtI
	qzHTptT5vrNHGc4vkogZSXRNaZ3hniqEqr4Zs3iVRmu083awm4m761SRbfyY9STan8LIZ03WQfp
	6QroNtgaoI6TpHSw8LuJSFN2xzJOKcTisEgI/94dy91DXljgpEWjJu5B1tfPgUesEdABqn6YLLF
	5XhluDxBvKCPQ7iWyCvoFlA==
X-Received: by 2002:a05:6122:6302:b0:5c5:90ae:a8b8 with SMTP id 71dfb90a1353d-5c680fff6fbmr3837914e0c.1.1788268418567;
        Tue, 01 Sep 2026 06:13:38 -0700 (PDT)
X-Received: by 2002:a05:6122:6302:b0:5c5:90ae:a8b8 with SMTP id 71dfb90a1353d-5c680fff6fbmr3837859e0c.1.1788268416683;
        Tue, 01 Sep 2026 06:13:36 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b5e89c5e1esm2901431e87.2.2026.09.01.06.13.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 06:13:35 -0700 (PDT)
Message-ID: <a57699e0-a0b4-438a-9ea3-db913301d90f@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 15:13:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/12] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp:
 Refactor init regs table definitions
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-4-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-4-39be0955a6aa@outlook.com>
X-Proofpoint-GUID: fDqPnq_xpoMh8PIJxqe8ze8T7D3Ptouk
X-Proofpoint-ORIG-GUID: fDqPnq_xpoMh8PIJxqe8ze8T7D3Ptouk
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX2Io8mO7DicIu
 mDbk2YhX30dZYM+hyn+eLf87rqfp26AMqDCcp2fjRrLJv0RmTVCt0N4/v15QFwu7ELL5fDaf3Zd
 S6T/W59RTFJuk3H/D8/j4sQnGAAfAFg=
X-Authority-Analysis: v=2.4 cv=U8eiy+ru c=1 sm=1 tr=0 ts=6a96cf83 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=XBovKe10WAMj5E-UAXEA:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX/AwT1uUuCzJF
 gTfHF7MzFCOWCdwFSy6igZFsSB+Odoln71ZeHluO6seebsYu/JdsmuvPrnHGXhlGF99Ea+q81jB
 qn6NZsgHRn7qrEGfMzG1Chj/WvXWayekuPTAgW7ZXm+LUOZRUARB0DD+2j7dXR6oLILwOgwIkxs
 7YRS/Ptqs+PJWJyeESoa8lstnU+/ijzgUH27+uBYe09VHvQsve73kayr21YEKDeQtGp3gPBwjLN
 tnGEjevN8UphLrm416Aq2T8ZK84rctkuIdQeUl0xTmh8qoLHOPP/Tad/fE4uGp1nl37MM4sMo4q
 TWvPy265w/nK2B+hXCBJkAJjaw92LUPMJG9Xey/j/8QzQL7UbtuuZ59rZPBt+ob9YLSXK9qb4ZG
 FEsqe5H/VjIZw/ZUHMsrbUwAK+aDwWP+YkPaT1AgH0HwOslJLR0gzmT1NjH8CBoRcaRQ3YPy9Gr
 I3PcvYacBQbD8szkP3g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 adultscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_061340_442415_6E872BA1 
X-CRM114-Status: GOOD (  11.19  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Refactor the IPQ5018/IPQ5332 UNIPHY PCIe init data by introducing a
> helper macro for register/value entries and converting open-coded struct
> initializers to the compact form.
> 
> Also remove an unused include, drop unused macro register definitions,
> and rename the IPQ5332-specific PHY CFG register macros to make their
> combo PCIe/USB3 scope explicit.
> 
> No functional change intended.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
