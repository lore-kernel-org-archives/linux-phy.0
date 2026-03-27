Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDEBF10ED67F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 14:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8RHw6Z+DwrJiZUd7+neERfx/eAp8rA/CZQMXG3cS6pE=; b=mKTMsQKbTnvLUI
	8gMsVGRlqGizCFqWzZ7ZpmaE8MyL1BmGb6CBTndxPhC2P8Z5D4+ycfG2wjZ4BbudtCuov4xDCwSLf
	55ONMEyikvT5IGiJqiCwcRRwjA53bjmrNuBKNx+gJdjn+4NYhCcCerXoTXo5LpZEo1Qz8zdSLp9nv
	8kJ2gvSFhN8/4oZkrt67m3rpFjAfpFBwV219E+NM1fByTNim1NYAfZdtAwuHxV+Wlz3AaNZopxX+z
	jiyRoYNbyqrfiwjdJLdSLBFvuBJAbjSxmO0ZKMTID5UusAmfrW9s3EJRkIQY8ZtJbGWhtfP9mPO+u
	UG7si0zEARZZ/A+TPePQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67xO-00000007Zzu-21fF;
	Fri, 27 Mar 2026 14:14:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67xL-00000007ZzK-3Ii2
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 14:14:37 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62RDhHu72558710
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 14:14:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=CBGpQvmwcGg1GnuKnAy2UQ
	+REwprmWMOKeO8PWhJsYM=; b=K3Ca4B8gLDQfSTmf4Y4jx1pI5Ljlz3vazQf7tz
	9ZR+lT7qaNLMBDDTkBlEO8vNKfXgDVeCi7ZG7jU5vgo4oJRRjp9qdzoAcZbmNISR
	Lm9p6hrzJAKaWWMG+yz//rSmXKvFmTTtDmDQMlaUgr+MOjYEWzeR3/pXNbANRaB8
	oBjz9cI29YMYrn6g4vFSPCWUboFNIu7EXzjcpUYrq3VjoFHy3esqBd+vauSfUAu+
	tR5F50deSzxYr87Mxb0eSsrD9FFNyUVC+C8IdVREYhOtDUzwXXaT7XRLtqDCFgA3
	65+gcXSrSZWV+wRuY8VKmVDJeLN1+m04PfmyIlRXj42C9Dag==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d59r1bwuc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 14:14:33 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50b4031b86dso66433671cf.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 07:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774620873; x=1775225673; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CBGpQvmwcGg1GnuKnAy2UQ+REwprmWMOKeO8PWhJsYM=;
        b=RWdL7VRjM5y4iYQaFrR2+x4or6C/CGOU3YsiMouKn8NmfIchwAs38vdunerXYdsdsb
         L9a2rMs5bcBmpjWuhS/wS+yjj5g+CoN/qbJi5+5EbATa0Sv2swPufbzSQkMxm7uqNPdC
         xGkfbKrqlaIQZrEg2iEaPypmlhxss5GzK4z0brFrpBVN12PrISBjrcjewSbvslPEkh5i
         becf9aDwI82zmPBaxuWMgxQCFlpqvPUn3NRVjaqv09k6dNnuLQzeANPzd+sd9BMlETBh
         FAu4Or4wwYcMuG2MfQoGEQPT8rPt+DD59b1ms8iiB49xj3zWsUp0ABH56VPuedjR0LSm
         L91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774620873; x=1775225673;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CBGpQvmwcGg1GnuKnAy2UQ+REwprmWMOKeO8PWhJsYM=;
        b=bzjJc5uabrk9qISuwKWmeHvqG94bZpssIrWPYy7hR/X707I/3KreMdcqB1WdxzL4JS
         lUujPxBjOE0P++HdR1/X67Nny8ajK3M9dy51shVmvIRTmETSCLuwQ0HF3BlyRzeleYes
         5HoQnOSSCxah0j/0UyLfIbh7qJQTqG5IqwC21rYkT0u52JLT/a7SRjXSATfqj5/J/+/e
         iwtKVSAEyYtIhzEZ8SfZPgBZxO28flqW6IKTYCmlfUbkb5ctJ/TaIjFpDsc7c0282QbA
         4AswNhLtV4QrS5Svo/tsGPcmLM2PUKvhvLpd6J7EpYSEIFJqoDlDPg+wZrzdu8J0Eqi1
         gXXg==
X-Forwarded-Encrypted: i=1; AJvYcCU4uOd3mpBKZG7Jqpgh6jbF7+/YhO2+KbWkpZ7U02tKgH/qLtWCZOkC0h7C2+cOtnTbapkUn3f+BoQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNkEvjuCmNV7QZP3jHK5B6YGyV2OPRt8LFOjBGpsyoyAO+sXz7
	5MkUdZF7y3ACvwN7uP6TH7GpQcNaoUa03kJ1stX7ApexnP+TdKMe0n/pN8mSby+D+uCsHTydLMy
	mLCuvyA7PRS2zmDmpIKsE19K2HCQAKvuObZ40MlbQr+W7a9h2gN93xsdH8fk0ANeOQcWC
X-Gm-Gg: ATEYQzy49nw8t6lwtoWqK9Gs16nIuKDIpjx07JZZuRPJGrgwvOMYQgg0bsmogFqgRkZ
	jo3QP434VrFBFGZoFvMqIA7+q0lbHjULmfJZPOSINPJxmzpnJQEELnwN3vGdNsFktvyvuuthB0u
	K80iP/sRRhT5+3R7PK+eMU39IkjSCx/uA/+uqYN+km5payXhEdQd/6Ea7CXbvg0uKG7p7gfeEW9
	AjDpU3uHq4XInGYkEitzGcRQONBCrqgqI9pz+D5LTjLBoANDFgdBbn51WB/IpIkmbE5B1kgDbxg
	3m54ikz3Do2Y4C4uKV65GbVMd4JyQ1FAgQfEuX4GN53kwuxMj14SEu9lYjdhs+IF2uDw+9W9Gp/
	VklgkPZXkHrk94zowLMlIIPADkv0=
X-Received: by 2002:a05:622a:4a17:b0:50b:5336:1d20 with SMTP id d75a77b69052e-50ba38efe47mr35435211cf.53.1774620873252;
        Fri, 27 Mar 2026 07:14:33 -0700 (PDT)
X-Received: by 2002:a05:622a:4a17:b0:50b:5336:1d20 with SMTP id d75a77b69052e-50ba38efe47mr35434531cf.53.1774620872644;
        Fri, 27 Mar 2026 07:14:32 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48722d23679sm191174815e9.9.2026.03.27.07.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 07:14:31 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 27 Mar 2026 16:14:27 +0200
Subject: [PATCH] dt-bindings: phy: qcom,snps-eusb2: Document the Eliza
 Synopsys eUSB2 PHY
MIME-Version: 1.0
Message-Id: <20260327-eliza-bindings-phy-eusb2-v1-1-1f8a9ad6a033@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAMKQxmkC/yXMQQqDMBBA0avIrDsQx6DQq5QuTDLqSEklU0tVv
 LupLt/i/w2Uk7DCvdgg8VdU3jGjvBXghzb2jBKygQzVpqIG+SVri05ikNgrTsOCPKsjdN6GQKa
 01nrI+ZS4k9+5fjwv6+xG9p//D/b9AALQRfF8AAAA
X-Change-ID: 20260327-eliza-bindings-phy-eusb2-bc4dd201444c
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-bc6c4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1127;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=FffQtVemK4+GxuPiabXgNhdawSo6PkG5NaSQJbKynBc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpxpDEtPdOv6+1gfvxnDu3hoLjI7ccgr+y31kGJ
 D7ZEunASWqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCacaQxAAKCRAbX0TJAJUV
 VhZ+EADGaluTf35ZyOzsEvgpReELDDJiewkNTKYwIAaEUFTKndlR/GDYRSgeLt5aXnnLEHHgfID
 T5RC6z8gidB10d9GI1nKg8hIjxwu8iU1ZE0/7PwPpDXkiC8xBESBjf3Z/4iAy6kfLdyeouEjI5a
 kM59d2GnPFZC4VOlVoZl02kAoFlopPHzqMa+MwQ1rpXmcQQ+H9vYBNbL2laeRT84FYEV7n0GTPs
 NVAoUovd8oMb6xB8YYF1BWyYUDW2Odf0qUgVNJ3tEN7c6M0yYPfjHYhgqUDdnN0eaA0K3YzBt2G
 P2Pn/QvDeqtrcc5+lNdkxLW68HWHX7ml9Rhe6fE6T2+HF0856DDmcUUdGl0g3cgIeDpXtC3z5Bw
 7Fh+uvjrvEks26nHZ+pVblNYJPipegkkG+1dv85NHLygvaBACY1jfhvB9NrIKNq6ewF/lvSmhbp
 dKcWi/0FBq1XX2D2bjPfPQDMkjRpyTSQAo1LnNxA06pDsh7VYwujBmMEJ1GF6pTr09/JIrizFPV
 U/CbLTmeVXXVDRUzCYDP/2U0Q/xEn7I6Ib/OzDKdV4PQBmeH4a60YUfKL0hkMs0fjuWJ8Ws50LB
 Jn4oWiYbO2YYjI4z7ZKL0Re0H6xBYFLF5H5CPeF7MYCtID9ytcuOh8k7Bgsht5EStJQQdRXrOBq
 OXdMtMk6zJPpgJA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDA5NyBTYWx0ZWRfX78SoYYpVbqsL
 pTzU1LSrfZlo8sx6rPZMhSNs7Q7vj7x05yPoCunuetdvRkbeE8WVf94yijOWUR1hA7riTc2+5tB
 pY07oMQf7KRFsCzlj+et+7kLuTQyvPMQOITnjGGtF9sKbycjT/HU8A4lgEFvJZVij2BZwKkYJVE
 4/cUJaotqUJkHP2Pi/qpCwyvH1oom/vaw2LASxZVfw99icapDyNbr9L+lBdkF6o5TnRT+P4hQx0
 CRq8AYdTBrfXEXuAbYh1gbMj3jYbE4gxdTaSRWZcMH2DwxDH8Oo5K+9wD4IoTqJzTI0DnO45Xwm
 xS2vgBDjBTQ/BHlwtfallllzOzhoC6inAjRvnUZrHrfX9N8ByctpbJqL6Iyc0Yi9Eiiie7X3zll
 mzZhpqt/Z8Mh6CxjqDO/tU9HI6ZdtMTT3zErY8UUrNUggxPVhNBLsHVnULZ17f9wEaG6rKVHlP3
 Ml5/37KSj3hWzjz2iIA==
X-Proofpoint-GUID: ekoeXPpwDhud107Eur-CThpHZzr8XOzK
X-Proofpoint-ORIG-GUID: ekoeXPpwDhud107Eur-CThpHZzr8XOzK
X-Authority-Analysis: v=2.4 cv=JaCxbEKV c=1 sm=1 tr=0 ts=69c690ca cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=gb61f_RGkQieOckiKckA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_04,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603270097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_071435_971058_34EF28B6 
X-CRM114-Status: GOOD (  11.07  )
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

The Synopsys eUSB2 PHY found on the Eliza SoC is fully compatible with the
one found the SM8550.

So document it by adding the compatible to the list that has the SM8550
one as fallback.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 854f70af0a6c..096f6b546632 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,eliza-snps-eusb2-phy
               - qcom,milos-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy

---
base-commit: e77a5a5cfe43b4c25bd44a3818e487033287517f
change-id: 20260327-eliza-bindings-phy-eusb2-bc4dd201444c

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
