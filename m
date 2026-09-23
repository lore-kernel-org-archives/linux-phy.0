Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAB5DC982FA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 12:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bC7tOf9nsDAfol3NcVqVHBIXeqZTTCL+IkA25qkuX/0=; b=RRufA/QUYQO/1J
	5bqd2w0zt2+UrYoe20QR2uLz9GveVDeWnTAjdXmRGuMltry6+NAy8EWb9V1W81Q/+4qDPZwk0WHrk
	GUeQ3H6C+lndtg/hhSS+bO0I9rPkfmB5r8niK/xH2fn87B2gxqlIJxuDcPSUYCemTGZ7/AwbLqFHS
	gPlb1Qpff/fhBuRoLv1zN1l8YOQHjlPEnptq5YXftJg71sKsL4jKbEHkkl6w/gOIgcFap3wJUoSLc
	12RrVCBvZwyhLCeyNSJ/0Ps/N4ayzjH52+G4p85IpPOeoSL5c/tfW+e9vHAkONAmqA7+eP/mtholD
	z8Y1+D2sbZ7Th+Jfn6yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9M91-00000008FvQ-2me6;
	Wed, 23 Sep 2026 12:32:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9M8y-00000008Fuc-1J4S
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 12:32:13 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68NBbXJZ2443386
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 12:32:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wdMS8+R4wHQtzwHsJlNh8jeKE2W5D1KWqQU43Szma4I=; b=mcEO1tfb4QCYZ2VO
	LmUNxsFxNIJJPSLGbez6p2cOiktCBAu0cpl/qGE6ixQj0RaQO9dHPJjlEKT6zFTM
	4A5p/Ga6PoRTkNlcRf8VzJArzqTBdMxcT+5g3ORHu8vIaLUD132W5216d9kY0SQ2
	hrJPQdYkzlCOn7eZwtyRchj8aNxzU0LYSVRu16HDD6UfXByv1xmXepMGmHyLI0Ml
	bEwUvc+j1HoHQHMCakRlpZSS4LGCBoUUcwaKEBL7rAWgYo93j52B/U+Cd24SwZT2
	OVFRPrhh6zgNqjngRSw8hNdJ+Y2GH0GnLXLzJ2z+1b5UhExFVhr8vHnU2w5sh0pl
	6lIo8g==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvbx7gsjq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 12:32:11 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5c665139c92so90770e0c.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 05:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790166731; x=1790771531; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wdMS8+R4wHQtzwHsJlNh8jeKE2W5D1KWqQU43Szma4I=;
        b=Ht9Jln4Y/sqisSWgoD+TZS3NlvPcw936G7eAsHOSSupaO9Qf3GJ93NSedPsh1+DCbr
         jyjvBtXisdxm0UpMYkyr+yVmn/YjbBrNCrgooRdSTl0WGjatqo4QWuF97ROrgA6le8x/
         gkq4EUOnG999AtGdcpMyuNi9qweD9PSH/w70OFo79C0xtSrda2VZuAWepwpW0rJqtUog
         WDd6tFdZypw2FfTMg688m2XTxi8Q7uowYE48DHAtaemzOFxPY97OFYdl586k1Cf/QrLR
         +H/j+274HxwP/8U2lboYSIqyDZjfIOiFIvMpPjXfuFS/S42is3Qr/xY78k4nMuxz9Kbe
         xKyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790166731; x=1790771531;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wdMS8+R4wHQtzwHsJlNh8jeKE2W5D1KWqQU43Szma4I=;
        b=qeScFlGwfkPl8QZukqxhl8iQ9m89earGcKBmi/ha9GP4IBGJ/zcqeqQYVSKbtjXY3u
         vDZBtRxhk9zGjZoZKZwlkWjaZWBDBY2uBMZzP7hhBA7EiC8gpg7R4LX8KsQyrz+Kw5p8
         u9irchOzPEuGz5IxmrP/Ri4SeTN38LOdTwvVtHoHoQ94ub6OgfLfcRUdLCmI1OgeTXbv
         LFoBGPllO27qHGfsqF39INEqPYH/kwPrXG8lWVw3e2+ywp1lyssCGaMIP4aY/yLxaKpC
         fbs9xiSYvv9aFM1py1KN8SXVBzGq/ixgHWbH7i/5CJFDGZCAfhATf5EpZHTX582NtZ7w
         SMfQ==
X-Forwarded-Encrypted: i=1; AKwUvBzCH07imBbXDQYEMSpJOCPSYKwwys9MeJPx8eWwf+I2x5iFhrvf3luZJ9Mh19foYpn9U/rCR3FbUi8=@lists.infradead.org
X-Gm-Message-State: AFuF++kt07T43FyOF4ZO6MYriNb8as9sKM2USDy7zDgnm3rjBp7pI/Jt
	sE4l+hDrLvVmqOLqJQIf2x7CeewsK4tHzb2s+96DhbPRov+3hhQ0mDlvWQPW8I75ldJKrocBUDw
	hyg78UpFIib9dsWis6fSC1OWakWlWC2iPjaMcLttChYy76uRjuSR8xhooMDpqUBylVQlv
X-Gm-Gg: AYBFou17QpRkUtFxpE850Q9pLvTVY50IMehrOOAndskQlbhN2n/QlIgd2XUnITCE/qL
	dCzJJNr7RNS3nnH1DZ46fCmD0vo0LDOsESJEGwNMmmYrEP40Qx3suDDxGjMzoEJf7glfENQGibK
	KL2So/LiLHr0Wmup2XOgNsb3i/NWiU/sGdP/+ZgKUdJaDbfDeXFyK5Awy8YlJyFIroDq51oyqMS
	wHN3yCgjHJnuDxJqQSagFq67ZnrgpTp7xwvRn6dmVNu54TzV5rcmK37FKnvcafND8hZvSWbTMad
	nOdOhTe2nAC16eD2nzElzX0pnf2RHTZe+G0b0ajA0TL8aiUvtWB3fOCK7uVGJLPh6b0tg7cdT1g
	NN/XQXRQRrSDE4zm9OLa3RA==
X-Received: by 2002:a05:6123:4214:20b0:5c9:fe51:53d5 with SMTP id 71dfb90a1353d-5ca737615b2mr333080e0c.1.1790166730843;
        Wed, 23 Sep 2026 05:32:10 -0700 (PDT)
X-Received: by 2002:a05:6123:4214:20b0:5c9:fe51:53d5 with SMTP id 71dfb90a1353d-5ca737615b2mr333039e0c.1.1790166730415;
        Wed, 23 Sep 2026 05:32:10 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aab3896a53sm1485858a12.18.2026.09.23.05.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2026 05:32:09 -0700 (PDT)
Message-ID: <ca7cf05f-0aac-4603-a362-0bd4c3193b13@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 14:32:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: qcom: monaco: Fix pcie1_phy compatible to list
 qcs8300 first
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-5-63c5282fb0db@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260921-monaco_ep-v1-5-63c5282fb0db@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: HOKmds_G4OrntgdltwokUe6oQZVaqgU0
X-Authority-Analysis: v=2.4 cv=J4s/fwnS c=1 sm=1 tr=0 ts=6ab3c6cb cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=jsnCtpYymfaPz7_p4TUA:9 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDA0OSBTYWx0ZWRfX8kPSgEa/4MdQ
 nr00sLn7a46zCeoP7r0i5U9Yebqpti0BWLuj+oTvk6vgrOoU6URLoclWFkkmtujzLQYS7CymZw3
 gaiCMDxkOLuj8jFSn3EF8QMkYKBdKdbV/RbFiBQynQR8471oQ7ZNa8KBbayfzUC4v3Hv7kD9R7g
 CtYbxtyvSlCXUfbRnQppcy43JL2eoygtsOV4aq28AogyW1ioeDCF5gcollIOvShK9zTY6VZuUa5
 /Yg7GF0ObyW7T97lqCSi5dGW+2sr04QME0qn0msf4ktZHTACz+HR66YnyyNTAHIQXiGnUKNQVZr
 gvZfuq7CBH9H8V4pAPuZZnjdz0VQ9iNd1UA5q0zqZa5Wz2ftwbjvyKn2adgoSATCNEcVMIsVpMg
 S9aneu62YIdF+ScwLUwDNupugHwR9hni4BRJlrAfzSWsSpqMX2JfjH4sHf/S7Zi9GNRWmnI+LRy
 OZqX5eigxevKEPjs6wA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDA0OSBTYWx0ZWRfXxxmjfg/RmIlm
 M83yN7MaIkUJvdnYv/41OzKIHPx8qqitK1hLfsFgepHDQij1rd7jR1B/VF23R+WGTcQgKOzlV3s
 ElkjZdgHUBlXmFIN+k34IWVVq4sHbwU=
X-Proofpoint-GUID: HOKmds_G4OrntgdltwokUe6oQZVaqgU0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501
 phishscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_053212_496246_9C841345 
X-CRM114-Status: GOOD (  11.14  )
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

On 9/21/26 12:58 PM, Krishna Chaitanya Chundru wrote:
> The existing pcie1_phy node only listed qcom,sa8775p-qmp-gen4x4-pcie-phy
> compatible, since no QCS8300-specific compatible was documented for this
> PHY at the time.
> 
> Now that qcom,qcs8300-qmp-gen4x4-pcie-phy is documented, list it first
> with qcom,sa8775p-qmp-gen4x4-pcie-phy as its fallback, matching the
> order used by the pcie0_ep and pcie1_ep nodes.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
